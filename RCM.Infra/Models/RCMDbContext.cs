﻿using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using RCM.Domain.Models;
using System.IO;

namespace RCM.Infra.Models
{
    public class RCMDbContext : DbContext
    {
        public DbSet<Cheque> Cheques { get; set; }
        public DbSet<Duplicata> Duplicatas { get; set; }
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Fornecedor> Fornecedores { get; set; }
        public DbSet<NotaFiscal> NotasFiscais { get; set; }
        public DbSet<Cidade> Cidades { get; set; }
        public DbSet<Estado> Estados { get; set; }
        public DbSet<Banco> Bancos { get; set; }
        public DbSet<Endereco> Enderecos { get; set; }
        public DbSet<Contato> Contatos { get; set; }

        public RCMDbContext()
        {
        }

        public RCMDbContext(DbContextOptions options) : base(options)
        {
        }

        protected internal virtual void OnModelCreating(DbContextOptionsBuilder modelBuilder)
        {
            var config = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            modelBuilder.UseSqlServer(config.GetConnectionString("RCMDatabase"));
        }
    }
}