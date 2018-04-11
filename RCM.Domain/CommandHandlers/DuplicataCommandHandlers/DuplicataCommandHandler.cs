﻿using MediatR;
using RCM.Domain.Commands.DuplicataCommands;
using RCM.Domain.Constants;
using RCM.Domain.Core.Commands;
using RCM.Domain.Core.Errors;
using RCM.Domain.Core.MediatorServices;
using RCM.Domain.Events.DuplicataEvents;
using RCM.Domain.Models;
using RCM.Domain.Models.DuplicataModels;
using RCM.Domain.Models.FornecedorModels;
using RCM.Domain.Repositories;
using RCM.Domain.UnitOfWork;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace RCM.Domain.CommandHandlers.DuplicataCommandHandlers
{
    public class DuplicataCommandHandler : CommandHandler<Duplicata>,
                                           IRequestHandler<AddDuplicataCommand, CommandResult>,
                                           IRequestHandler<UpdateDuplicataCommand, CommandResult>,
                                           IRequestHandler<RemoveDuplicataCommand, CommandResult>,
                                           IRequestHandler<PagarDuplicataCommand, CommandResult>,
                                           IRequestHandler<EstornarDuplicataCommand, CommandResult>
    {
        private readonly IFornecedorRepository _fornecedorRepository;

        public DuplicataCommandHandler(IFornecedorRepository fornecedorRepository, IDuplicataRepository duplicataRepository, IMediatorHandler mediator, IUnitOfWork unitOfWork) : 
                                                                                                                base(mediator, duplicataRepository, unitOfWork)
        {
            _fornecedorRepository = fornecedorRepository;
        }

        public Task<CommandResult> Handle(AddDuplicataCommand command, CancellationToken cancellationToken)
        {
            if (!command.IsValid())
            {
                NotifyRequestErrors(command);
                return Response();
            }

            if (CheckNumeroExists(command.NumeroDocumento, command.FornecedorId, command.Id))
            {
                _commandResponse.AddError(new CommandError(RequestErrorsMessageConstants.DuplicataAlreadyExists));
                return Response();
            }

            Fornecedor fornecedor = _fornecedorRepository.GetById(command.FornecedorId);
            Duplicata duplicata = new Duplicata(command.NumeroDocumento, command.DataEmissao, command.DataVencimento, fornecedor, command.Valor, command.Observacao);

            _baseRepository.Add(duplicata);

            if (Commit())
                _mediator.Publish(new AddedDuplicataEvent());

            return Response();
        }

        public Task<CommandResult> Handle(UpdateDuplicataCommand command, CancellationToken cancellationToken)
        {
            if (!command.IsValid())
            {
                NotifyRequestErrors(command);
                return Response();
            }

            if (CheckNumeroExists(command.NumeroDocumento, command.FornecedorId, command.Id))
            {
                _commandResponse.AddError(new CommandError(RequestErrorsMessageConstants.DuplicataAlreadyExists));
                return Response();
            }

            Fornecedor fornecedor = _fornecedorRepository.GetById(command.FornecedorId);
            Duplicata duplicata = new Duplicata(command.Id, command.NumeroDocumento, command.DataEmissao, command.DataVencimento, fornecedor, command.Valor, command.Observacao);

            _baseRepository.Update(duplicata);

            if (Commit())
                _mediator.Publish(new UpdatedDuplicataEvent());

            return Response();
        }

        public Task<CommandResult> Handle(RemoveDuplicataCommand command, CancellationToken cancellationToken)
        {
            if (!command.IsValid())
            {
                NotifyRequestErrors(command);
                return Response();
            }

            Duplicata duplicata = _baseRepository.GetById(command.Id);
            _baseRepository.Remove(duplicata);

            if (Commit())
                _mediator.Publish(new RemovedDuplicataEvent());

            return Response();
        }

        public Task<CommandResult> Handle(PagarDuplicataCommand command, CancellationToken cancellationToken)
        {
            if (!command.IsValid())
            {
                NotifyRequestErrors(command);
                return Response();
            }

            Duplicata duplicata = _baseRepository.GetById(command.Id);
            Pagamento pagamento = new Pagamento(command.DataPagamento, command.ValorPago);
            duplicata.Pagar(pagamento);
            _baseRepository.Update(duplicata);

            if (Commit()) 
                _mediator.Publish(new UpdatedDuplicataEvent());

            return Response();
        }

        public Task<CommandResult> Handle(EstornarDuplicataCommand command, CancellationToken cancellationToken)
        {
            if (!command.IsValid())
            {
                NotifyRequestErrors(command);
                return Response();
            }

            Duplicata duplicata = _baseRepository.GetById(command.Id);
            duplicata.EstornarPagamento();
            _baseRepository.Update(duplicata);

            if (Commit())
                _mediator.Publish(new UpdatedDuplicataEvent());

            return Response();
        }

        private bool CheckNumeroExists(string numeroDocumento, Guid fornecedorId, Guid novaDuplicataId)
        {
            var numeroDocumentoSpecification = new DuplicataNumeroDocumentoSpecification(numeroDocumento);
            var fornecedorSpecification = new DuplicataFornecedorIdSpecification(fornecedorId);

            Duplicata duplicata = _baseRepository.Get(numeroDocumentoSpecification
                .And(fornecedorSpecification)
                .ToExpression())
                .FirstOrDefault();

            if (duplicata == null || novaDuplicataId == duplicata.Id)
                return false;
            
            return true;
        }
    }
}
