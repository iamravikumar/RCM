﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using Microsoft.EntityFrameworkCore.ValueGeneration;
using RCM.Domain.Models.ClienteModels;
using RCM.Domain.Models.FornecedorModels;
using RCM.Domain.Models.OrdemServicoModels;
using RCM.Domain.Models.ProdutoModels;
using RCM.Domain.Models.VendaModels;
using RCM.Infra.Data.Context;
using System;

namespace RCM.Infra.Data.Migrations
{
    [DbContext(typeof(RCMDbContext))]
    [Migration("20180511014941_RenameFornecedorDocumentoColumns")]
    partial class RenameFornecedorDocumentoColumns
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.3-rtm-10026")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("RCM.Domain.Models.BancoModels.Banco", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("CodigoCompensacao")
                        .HasMaxLength(4);

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.HasKey("Id");

                    b.ToTable("Bancos");
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.Cheque", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Agencia")
                        .IsRequired()
                        .HasMaxLength(5);

                    b.Property<Guid>("BancoId");

                    b.Property<Guid>("ClienteId");

                    b.Property<string>("Conta")
                        .IsRequired()
                        .HasMaxLength(6);

                    b.Property<DateTime>("DataEmissao");

                    b.Property<DateTime?>("DataPagamento");

                    b.Property<DateTime>("DataVencimento");

                    b.Property<string>("NumeroCheque")
                        .IsRequired()
                        .HasMaxLength(8);

                    b.Property<string>("Observacao")
                        .HasMaxLength(1000);

                    b.Property<decimal>("Valor")
                        .HasMaxLength(4);

                    b.HasKey("Id");

                    b.HasIndex("BancoId");

                    b.HasIndex("ClienteId");

                    b.ToTable("Cheques");
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque", b =>
                {
                    b.Property<Guid>("ChequeId");

                    b.Property<DateTime>("DataEvento");

                    b.Property<int>("Situacao");

                    b.HasKey("ChequeId");

                    b.ToTable("EstadosCheques");

                    b.HasDiscriminator<int>("Situacao");
                });

            modelBuilder.Entity("RCM.Domain.Models.CidadeModels.Cidade", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<Guid>("EstadoId");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(50);

                    b.HasKey("Id");

                    b.HasIndex("EstadoId");

                    b.ToTable("Cidades");
                });

            modelBuilder.Entity("RCM.Domain.Models.ClienteModels.Cliente", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Descricao")
                        .HasMaxLength(1000);

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100);

                    b.Property<int>("Pontuacao");

                    b.Property<int>("Tipo");

                    b.HasKey("Id");

                    b.ToTable("Clientes");
                });

            modelBuilder.Entity("RCM.Domain.Models.DuplicataModels.Duplicata", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("DataEmissao");

                    b.Property<DateTime>("DataVencimento");

                    b.Property<Guid>("FornecedorId");

                    b.Property<Guid?>("NotaFiscalId");

                    b.Property<string>("NumeroDocumento")
                        .IsRequired()
                        .HasMaxLength(20);

                    b.Property<string>("Observacao")
                        .HasMaxLength(1000);

                    b.Property<decimal>("Valor")
                        .HasMaxLength(4);

                    b.HasKey("Id");

                    b.HasIndex("FornecedorId");

                    b.HasIndex("NotaFiscalId");

                    b.ToTable("Duplicatas");
                });

            modelBuilder.Entity("RCM.Domain.Models.EmpresaModels.Empresa", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Descricao")
                        .HasMaxLength(1000);

                    b.Property<byte[]>("Logo");

                    b.Property<string>("NomeFantasia")
                        .IsRequired()
                        .HasMaxLength(100);

                    b.Property<string>("RazaoSocial")
                        .IsRequired()
                        .HasMaxLength(100);

                    b.HasKey("Id");

                    b.ToTable("Empresa");
                });

            modelBuilder.Entity("RCM.Domain.Models.EstadoModels.Estado", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Nome");

                    b.HasKey("Id");

                    b.ToTable("Estados");
                });

            modelBuilder.Entity("RCM.Domain.Models.FornecedorModels.Fornecedor", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100);

                    b.Property<string>("Observacao")
                        .HasMaxLength(1000);

                    b.Property<int>("Tipo");

                    b.HasKey("Id");

                    b.ToTable("Fornecedores");
                });

            modelBuilder.Entity("RCM.Domain.Models.MarcaModels.Marca", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100);

                    b.Property<string>("Observacao")
                        .HasMaxLength(1000);

                    b.HasKey("Id");

                    b.ToTable("Marcas");
                });

            modelBuilder.Entity("RCM.Domain.Models.NotaFiscalModels.NotaFiscal", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime?>("DataChegada")
                        .IsRequired();

                    b.Property<DateTime>("DataEmissao");

                    b.Property<Guid?>("FornecedorId");

                    b.Property<string>("NumeroDocumento")
                        .IsRequired()
                        .HasMaxLength(6);

                    b.Property<decimal>("Valor")
                        .HasMaxLength(4);

                    b.HasKey("Id");

                    b.HasIndex("FornecedorId");

                    b.ToTable("NotasFiscais");
                });

            modelBuilder.Entity("RCM.Domain.Models.OrdemServicoModels.OrdemServico", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<Guid>("ClienteId");

                    b.Property<DateTime>("DataEntrada");

                    b.Property<DateTime?>("DataSaida");

                    b.Property<int>("Status");

                    b.Property<decimal>("Total");

                    b.HasKey("Id");

                    b.HasIndex("ClienteId");

                    b.ToTable("OrdensServico");
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.Aplicacao", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.HasKey("Id");

                    b.ToTable("Aplicacoes");
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.Produto", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Estoque")
                        .HasMaxLength(4);

                    b.Property<int>("EstoqueIdeal")
                        .HasMaxLength(4);

                    b.Property<int>("EstoqueMinimo")
                        .HasMaxLength(4);

                    b.Property<Guid>("MarcaId");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(100);

                    b.Property<Guid?>("NotaFiscalId");

                    b.Property<Guid?>("OrdemServicoId");

                    b.Property<decimal>("PrecoVenda")
                        .HasMaxLength(4);

                    b.Property<string>("ReferenciaAuxiliar")
                        .HasMaxLength(50);

                    b.Property<string>("ReferenciaFabricante")
                        .HasMaxLength(25);

                    b.Property<string>("ReferenciaOriginal")
                        .HasMaxLength(25);

                    b.Property<int>("Unidade");

                    b.HasKey("Id");

                    b.HasIndex("MarcaId");

                    b.HasIndex("NotaFiscalId");

                    b.HasIndex("OrdemServicoId");

                    b.ToTable("Produtos");
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.ProdutoAplicacao", b =>
                {
                    b.Property<Guid>("AplicacaoId");

                    b.Property<Guid>("ProdutoId");

                    b.HasKey("AplicacaoId", "ProdutoId");

                    b.HasIndex("ProdutoId");

                    b.ToTable("ProdutoAplicacao");
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.ProdutoFornecedor", b =>
                {
                    b.Property<Guid>("ProdutoId");

                    b.Property<Guid>("FornecedorId");

                    b.Property<int>("Disponibilidade");

                    b.Property<decimal>("PrecoCusto")
                        .HasMaxLength(4);

                    b.HasKey("ProdutoId", "FornecedorId");

                    b.HasIndex("FornecedorId");

                    b.ToTable("ProdutoFornecedor");
                });

            modelBuilder.Entity("RCM.Domain.Models.VendaModels.Venda", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<Guid>("ClienteId");

                    b.Property<DateTime>("DataVenda");

                    b.Property<string>("Detalhes")
                        .IsRequired()
                        .HasMaxLength(1000);

                    b.Property<int>("QuantidadeProdutos")
                        .HasMaxLength(2);

                    b.Property<int>("Status");

                    b.Property<decimal>("TotalVenda")
                        .HasMaxLength(5);

                    b.HasKey("Id");

                    b.HasIndex("ClienteId");

                    b.ToTable("Vendas");
                });

            modelBuilder.Entity("RCM.Domain.Models.VendaModels.VendaProduto", b =>
                {
                    b.Property<Guid>("ProdutoId");

                    b.Property<Guid>("VendaId");

                    b.Property<decimal>("Acrescimo")
                        .HasMaxLength(4);

                    b.Property<decimal>("Desconto")
                        .HasMaxLength(4);

                    b.Property<decimal>("PrecoFinal");

                    b.Property<decimal>("PrecoVenda");

                    b.Property<int>("Quantidade")
                        .HasMaxLength(4);

                    b.HasKey("ProdutoId", "VendaId");

                    b.HasIndex("VendaId");

                    b.ToTable("VendaProduto");
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.ChequeBloqueado", b =>
                {
                    b.HasBaseType("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque");


                    b.ToTable("ChequeBloqueado");

                    b.HasDiscriminator().HasValue(1);
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.ChequeCompensado", b =>
                {
                    b.HasBaseType("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque");


                    b.ToTable("ChequeCompensado");

                    b.HasDiscriminator().HasValue(2);
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.ChequeDevolvido", b =>
                {
                    b.HasBaseType("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque");

                    b.Property<string>("Motivo")
                        .HasColumnName("Motivo")
                        .HasMaxLength(100);

                    b.ToTable("ChequeDevolvido");

                    b.HasDiscriminator().HasValue(5);
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.ChequeRepassado", b =>
                {
                    b.HasBaseType("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque");

                    b.Property<Guid?>("ClienteId");

                    b.HasIndex("ClienteId");

                    b.ToTable("ChequeRepassado");

                    b.HasDiscriminator().HasValue(3);
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.ChequeSustado", b =>
                {
                    b.HasBaseType("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque");

                    b.Property<string>("Motivo")
                        .HasColumnName("Motivo")
                        .HasMaxLength(100);

                    b.ToTable("ChequeSustado");

                    b.HasDiscriminator().HasValue(4);
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.Cheque", b =>
                {
                    b.HasOne("RCM.Domain.Models.BancoModels.Banco", "Banco")
                        .WithMany("Cheques")
                        .HasForeignKey("BancoId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("RCM.Domain.Models.ClienteModels.Cliente", "Cliente")
                        .WithMany("Cheques")
                        .HasForeignKey("ClienteId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque", b =>
                {
                    b.HasOne("RCM.Domain.Models.ChequeModels.Cheque", "Cheque")
                        .WithOne("EstadoCheque")
                        .HasForeignKey("RCM.Domain.Models.ChequeModels.ChequeStates.EstadoCheque", "ChequeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.CidadeModels.Cidade", b =>
                {
                    b.HasOne("RCM.Domain.Models.EstadoModels.Estado", "Estado")
                        .WithMany("Cidades")
                        .HasForeignKey("EstadoId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.ClienteModels.Cliente", b =>
                {
                    b.OwnsOne("RCM.Domain.Models.Contato", "Contato", b1 =>
                        {
                            b1.Property<Guid>("ClienteId");

                            b1.Property<string>("Celular")
                                .HasColumnName("ContatoCelular")
                                .HasMaxLength(15);

                            b1.Property<string>("Email")
                                .HasColumnName("ContatoEmail")
                                .HasMaxLength(100);

                            b1.Property<string>("Observacao")
                                .HasColumnName("ContatoObservacao")
                                .HasMaxLength(250);

                            b1.Property<string>("TelefoneComercial")
                                .HasColumnName("ContatoTelefoneComercial")
                                .HasMaxLength(15);

                            b1.Property<string>("TelefoneResidencial")
                                .HasColumnName("ContatoTelefoneResidencial")
                                .HasMaxLength(15);

                            b1.ToTable("Clientes");

                            b1.HasOne("RCM.Domain.Models.ClienteModels.Cliente")
                                .WithOne("Contato")
                                .HasForeignKey("RCM.Domain.Models.Contato", "ClienteId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });

                    b.OwnsOne("RCM.Domain.Models.Documento", "Documento", b1 =>
                        {
                            b1.Property<Guid>("ClienteId");

                            b1.Property<string>("CadastroEstadual")
                                .IsRequired()
                                .HasColumnName("DocumentoEstadual")
                                .HasMaxLength(14);

                            b1.Property<string>("CadastroNacional")
                                .IsRequired()
                                .HasColumnName("DocumentoNacional")
                                .HasMaxLength(14);

                            b1.ToTable("Clientes");

                            b1.HasOne("RCM.Domain.Models.ClienteModels.Cliente")
                                .WithOne("Documento")
                                .HasForeignKey("RCM.Domain.Models.Documento", "ClienteId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });

                    b.OwnsOne("RCM.Domain.Models.Endereco", "Endereco", b1 =>
                        {
                            b1.Property<Guid>("ClienteId");

                            b1.Property<string>("Bairro")
                                .IsRequired()
                                .HasColumnName("EnderecoBairro")
                                .HasMaxLength(25);

                            b1.Property<string>("CEP")
                                .HasColumnName("EnderecoCEP")
                                .HasMaxLength(8);

                            b1.Property<string>("Complemento")
                                .HasColumnName("EnderecoComplemento")
                                .HasMaxLength(250);

                            b1.Property<int>("Numero")
                                .HasColumnName("EnderecoNumero")
                                .HasMaxLength(4);

                            b1.Property<string>("Rua")
                                .IsRequired()
                                .HasColumnName("EnderecoRua")
                                .HasMaxLength(100);

                            b1.ToTable("Clientes");

                            b1.HasOne("RCM.Domain.Models.ClienteModels.Cliente")
                                .WithOne("Endereco")
                                .HasForeignKey("RCM.Domain.Models.Endereco", "ClienteId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });
                });

            modelBuilder.Entity("RCM.Domain.Models.DuplicataModels.Duplicata", b =>
                {
                    b.HasOne("RCM.Domain.Models.FornecedorModels.Fornecedor", "Fornecedor")
                        .WithMany("Duplicatas")
                        .HasForeignKey("FornecedorId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("RCM.Domain.Models.NotaFiscalModels.NotaFiscal", "NotaFiscal")
                        .WithMany("Duplicatas")
                        .HasForeignKey("NotaFiscalId");

                    b.OwnsOne("RCM.Domain.Models.Pagamento", "Pagamento", b1 =>
                        {
                            b1.Property<Guid>("DuplicataId");

                            b1.Property<DateTime?>("DataPagamento")
                                .HasColumnName("DataPagamento");

                            b1.Property<decimal?>("ValorPago")
                                .HasColumnName("ValorPago");

                            b1.ToTable("Duplicatas");

                            b1.HasOne("RCM.Domain.Models.DuplicataModels.Duplicata")
                                .WithOne("Pagamento")
                                .HasForeignKey("RCM.Domain.Models.Pagamento", "DuplicataId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });
                });

            modelBuilder.Entity("RCM.Domain.Models.EmpresaModels.Empresa", b =>
                {
                    b.OwnsOne("RCM.Domain.Models.Contato", "Contato", b1 =>
                        {
                            b1.Property<Guid?>("EmpresaId");

                            b1.Property<string>("Celular")
                                .HasColumnName("ContatoCelular")
                                .HasMaxLength(15);

                            b1.Property<string>("Email")
                                .HasColumnName("ContatoEmail")
                                .HasMaxLength(100);

                            b1.Property<string>("Observacao")
                                .HasColumnName("ContatoObservacao")
                                .HasMaxLength(250);

                            b1.Property<string>("TelefoneComercial")
                                .HasColumnName("ContatoTelefoneComercial")
                                .HasMaxLength(15);

                            b1.Property<string>("TelefoneResidencial")
                                .HasColumnName("ContatoTelefoneResidencial")
                                .HasMaxLength(15);

                            b1.ToTable("Empresa");

                            b1.HasOne("RCM.Domain.Models.EmpresaModels.Empresa")
                                .WithOne("Contato")
                                .HasForeignKey("RCM.Domain.Models.Contato", "EmpresaId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });

                    b.OwnsOne("RCM.Domain.Models.Documento", "Documento", b1 =>
                        {
                            b1.Property<Guid?>("EmpresaId");

                            b1.Property<string>("CadastroEstadual")
                                .HasColumnName("InscricaoEstadual")
                                .HasMaxLength(11);

                            b1.Property<string>("CadastroNacional")
                                .IsRequired()
                                .HasColumnName("CNPJ")
                                .HasMaxLength(14);

                            b1.ToTable("Empresa");

                            b1.HasOne("RCM.Domain.Models.EmpresaModels.Empresa")
                                .WithOne("Documento")
                                .HasForeignKey("RCM.Domain.Models.Documento", "EmpresaId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });

                    b.OwnsOne("RCM.Domain.Models.Endereco", "Endereco", b1 =>
                        {
                            b1.Property<Guid?>("EmpresaId");

                            b1.Property<string>("Bairro")
                                .IsRequired()
                                .HasColumnName("EnderecoBairro")
                                .HasMaxLength(25);

                            b1.Property<string>("CEP")
                                .HasColumnName("EnderecoCEP")
                                .HasMaxLength(8);

                            b1.Property<string>("Complemento")
                                .HasColumnName("EnderecoComplemento")
                                .HasMaxLength(250);

                            b1.Property<int>("Numero")
                                .HasColumnName("EnderecoNumero")
                                .HasMaxLength(4);

                            b1.Property<string>("Rua")
                                .IsRequired()
                                .HasColumnName("EnderecoRua")
                                .HasMaxLength(100);

                            b1.ToTable("Empresa");

                            b1.HasOne("RCM.Domain.Models.EmpresaModels.Empresa")
                                .WithOne("Endereco")
                                .HasForeignKey("RCM.Domain.Models.Endereco", "EmpresaId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });
                });

            modelBuilder.Entity("RCM.Domain.Models.FornecedorModels.Fornecedor", b =>
                {
                    b.OwnsOne("RCM.Domain.Models.Contato", "Contato", b1 =>
                        {
                            b1.Property<Guid?>("FornecedorId");

                            b1.Property<string>("Celular")
                                .HasColumnName("ContatoCelular")
                                .HasMaxLength(15);

                            b1.Property<string>("Email")
                                .HasColumnName("ContatoEmail")
                                .HasMaxLength(100);

                            b1.Property<string>("Observacao")
                                .HasColumnName("ContatoObservacao")
                                .HasMaxLength(250);

                            b1.Property<string>("TelefoneComercial")
                                .HasColumnName("ContatoTelefoneComercial")
                                .HasMaxLength(15);

                            b1.Property<string>("TelefoneResidencial")
                                .HasColumnName("ContatoTelefoneResidencial")
                                .HasMaxLength(15);

                            b1.ToTable("Fornecedores");

                            b1.HasOne("RCM.Domain.Models.FornecedorModels.Fornecedor")
                                .WithOne("Contato")
                                .HasForeignKey("RCM.Domain.Models.Contato", "FornecedorId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });

                    b.OwnsOne("RCM.Domain.Models.Documento", "Documento", b1 =>
                        {
                            b1.Property<Guid?>("FornecedorId");

                            b1.Property<string>("CadastroEstadual")
                                .IsRequired()
                                .HasColumnName("DocumentoEstadual")
                                .HasMaxLength(11);

                            b1.Property<string>("CadastroNacional")
                                .IsRequired()
                                .HasColumnName("DocumentoNacional")
                                .HasMaxLength(14);

                            b1.ToTable("Fornecedores");

                            b1.HasOne("RCM.Domain.Models.FornecedorModels.Fornecedor")
                                .WithOne("Documento")
                                .HasForeignKey("RCM.Domain.Models.Documento", "FornecedorId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });

                    b.OwnsOne("RCM.Domain.Models.Endereco", "Endereco", b1 =>
                        {
                            b1.Property<Guid?>("FornecedorId");

                            b1.Property<string>("Bairro")
                                .IsRequired()
                                .HasColumnName("EnderecoBairro")
                                .HasMaxLength(25);

                            b1.Property<string>("CEP")
                                .HasColumnName("EnderecoCEP")
                                .HasMaxLength(8);

                            b1.Property<string>("Complemento")
                                .HasColumnName("EnderecoComplemento")
                                .HasMaxLength(250);

                            b1.Property<int>("Numero")
                                .HasColumnName("EnderecoNumero")
                                .HasMaxLength(4);

                            b1.Property<string>("Rua")
                                .IsRequired()
                                .HasColumnName("EnderecoRua")
                                .HasMaxLength(100);

                            b1.ToTable("Fornecedores");

                            b1.HasOne("RCM.Domain.Models.FornecedorModels.Fornecedor")
                                .WithOne("Endereco")
                                .HasForeignKey("RCM.Domain.Models.Endereco", "FornecedorId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });
                });

            modelBuilder.Entity("RCM.Domain.Models.NotaFiscalModels.NotaFiscal", b =>
                {
                    b.HasOne("RCM.Domain.Models.FornecedorModels.Fornecedor")
                        .WithMany("NotasFiscais")
                        .HasForeignKey("FornecedorId");
                });

            modelBuilder.Entity("RCM.Domain.Models.OrdemServicoModels.OrdemServico", b =>
                {
                    b.HasOne("RCM.Domain.Models.ClienteModels.Cliente", "Cliente")
                        .WithMany()
                        .HasForeignKey("ClienteId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.Aplicacao", b =>
                {
                    b.OwnsOne("RCM.Domain.Models.Carro", "Carro", b1 =>
                        {
                            b1.Property<Guid>("AplicacaoId");

                            b1.Property<int>("Ano")
                                .HasColumnName("Ano")
                                .HasMaxLength(4);

                            b1.Property<string>("Marca")
                                .IsRequired()
                                .HasColumnName("Marca")
                                .HasMaxLength(100);

                            b1.Property<string>("Modelo")
                                .IsRequired()
                                .HasColumnName("Modelo")
                                .HasMaxLength(250);

                            b1.Property<string>("Motor")
                                .HasColumnName("Motor")
                                .HasMaxLength(100);

                            b1.Property<string>("Observacao")
                                .HasColumnName("Observacao")
                                .HasMaxLength(1000);

                            b1.ToTable("Aplicacoes");

                            b1.HasOne("RCM.Domain.Models.ProdutoModels.Aplicacao")
                                .WithOne("Carro")
                                .HasForeignKey("RCM.Domain.Models.Carro", "AplicacaoId")
                                .OnDelete(DeleteBehavior.Cascade);
                        });
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.Produto", b =>
                {
                    b.HasOne("RCM.Domain.Models.MarcaModels.Marca", "Marca")
                        .WithMany("Produtos")
                        .HasForeignKey("MarcaId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("RCM.Domain.Models.NotaFiscalModels.NotaFiscal")
                        .WithMany("Produtos")
                        .HasForeignKey("NotaFiscalId");

                    b.HasOne("RCM.Domain.Models.OrdemServicoModels.OrdemServico")
                        .WithMany("Produtos")
                        .HasForeignKey("OrdemServicoId");
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.ProdutoAplicacao", b =>
                {
                    b.HasOne("RCM.Domain.Models.ProdutoModels.Aplicacao", "Aplicacao")
                        .WithMany("Produtos")
                        .HasForeignKey("AplicacaoId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("RCM.Domain.Models.ProdutoModels.Produto", "Produto")
                        .WithMany("Aplicacoes")
                        .HasForeignKey("ProdutoId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.ProdutoModels.ProdutoFornecedor", b =>
                {
                    b.HasOne("RCM.Domain.Models.FornecedorModels.Fornecedor", "Fornecedor")
                        .WithMany("Produtos")
                        .HasForeignKey("FornecedorId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("RCM.Domain.Models.ProdutoModels.Produto", "Produto")
                        .WithMany("Fornecedores")
                        .HasForeignKey("ProdutoId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.VendaModels.Venda", b =>
                {
                    b.HasOne("RCM.Domain.Models.ClienteModels.Cliente", "Cliente")
                        .WithMany()
                        .HasForeignKey("ClienteId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.VendaModels.VendaProduto", b =>
                {
                    b.HasOne("RCM.Domain.Models.ProdutoModels.Produto", "Produto")
                        .WithMany()
                        .HasForeignKey("ProdutoId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("RCM.Domain.Models.VendaModels.Venda", "Venda")
                        .WithMany("Produtos")
                        .HasForeignKey("VendaId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("RCM.Domain.Models.ChequeModels.ChequeStates.ChequeRepassado", b =>
                {
                    b.HasOne("RCM.Domain.Models.ClienteModels.Cliente", "Cliente")
                        .WithMany()
                        .HasForeignKey("ClienteId");
                });
#pragma warning restore 612, 618
        }
    }
}
