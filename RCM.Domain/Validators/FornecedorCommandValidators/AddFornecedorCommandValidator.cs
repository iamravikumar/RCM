﻿using RCM.Domain.Commands.FornecedorCommands;

namespace RCM.Domain.Validators.FornecedorCommandValidators
{
    public class AddFornecedorCommandValidator : FornecedorCommandValidator<AddFornecedorCommand>
    {
        public AddFornecedorCommandValidator()
        {
            ValidateNome();
            ValidateDescricao();
            ValidateContato();
            ValidateEndereco();
            ValidateDocumento();
        }
    }
}
