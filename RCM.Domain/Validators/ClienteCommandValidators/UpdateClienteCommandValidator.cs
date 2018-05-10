﻿using RCM.Domain.Commands.ClienteCommands;

namespace RCM.Domain.Validators.ClienteCommandValidators
{
    public class UpdateClienteCommandValidator : ClienteCommandValidator<UpdateClienteCommand>
    {
        public UpdateClienteCommandValidator()
        {
            ValidateId();
            ValidateNome();
            ValidatePontuacao();
            ValidateDescricao();

            ValidateContato();
            ValidateEndereco();
        }
    }
}
