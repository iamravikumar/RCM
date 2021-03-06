USE [master]
GO
/****** Object:  Database [RCMDatabase]    Script Date: 21/06/2018 23:59:14 ******/
CREATE DATABASE [RCMDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RCMDatabase', FILENAME = N'C:\Users\lucas\RCMDatabase.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RCMDatabase_log', FILENAME = N'C:\Users\lucas\RCMDatabase_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RCMDatabase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RCMDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RCMDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RCMDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RCMDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RCMDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RCMDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [RCMDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RCMDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RCMDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RCMDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RCMDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RCMDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RCMDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RCMDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RCMDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RCMDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RCMDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RCMDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RCMDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RCMDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RCMDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RCMDatabase] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [RCMDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RCMDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RCMDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [RCMDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RCMDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RCMDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RCMDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RCMDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RCMDatabase] SET QUERY_STORE = OFF
GO
USE [RCMDatabase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [RCMDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/06/2018 23:59:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aplicacoes]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aplicacoes](
	[Id] [uniqueidentifier] NOT NULL,
	[CarroAno] [int] NULL,
	[CarroMarca] [nvarchar](100) NOT NULL,
	[CarroModelo] [nvarchar](250) NOT NULL,
	[CarroMotor] [nvarchar](100) NOT NULL,
	[Observacao] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Aplicacoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bancos](
	[Id] [uniqueidentifier] NOT NULL,
	[CodigoCompensacao] [int] NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bancos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cheques]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheques](
	[Id] [uniqueidentifier] NOT NULL,
	[Agencia] [nvarchar](5) NOT NULL,
	[BancoId] [uniqueidentifier] NOT NULL,
	[ClienteId] [uniqueidentifier] NOT NULL,
	[Conta] [nvarchar](10) NOT NULL,
	[DataEmissao] [datetime2](7) NOT NULL,
	[DataVencimento] [datetime2](7) NOT NULL,
	[NumeroCheque] [nvarchar](8) NOT NULL,
	[Observacao] [nvarchar](1000) NULL,
	[Valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Cheques] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidades]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidades](
	[Id] [uniqueidentifier] NOT NULL,
	[EstadoId] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [uniqueidentifier] NOT NULL,
	[EnderecoBairro] [nvarchar](25) NULL,
	[EnderecoCEP] [nvarchar](8) NULL,
	[EnderecoComplemento] [nvarchar](250) NULL,
	[EnderecoNumero] [int] NULL,
	[EnderecoRua] [nvarchar](100) NULL,
	[Descricao] [nvarchar](1000) NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[ContatoCelular] [nvarchar](15) NULL,
	[ContatoEmail] [nvarchar](100) NULL,
	[ContatoObservacao] [nvarchar](250) NULL,
	[ContatoTelefoneComercial] [nvarchar](15) NULL,
	[ContatoTelefoneResidencial] [nvarchar](15) NULL,
	[DocumentoEstadual] [nvarchar](14) NULL,
	[DocumentoNacional] [nvarchar](14) NULL,
	[Pontuacao] [int] NOT NULL,
	[Tipo] [int] NOT NULL,
	[Endereco_CidadeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DomainEvents]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DomainEvents](
	[Id] [uniqueidentifier] NOT NULL,
	[AggregateId] [uniqueidentifier] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DomainEvents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Duplicatas]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duplicatas](
	[Id] [uniqueidentifier] NOT NULL,
	[DataEmissao] [datetime2](7) NOT NULL,
	[DataPagamento] [datetime2](7) NULL,
	[DataVencimento] [datetime2](7) NOT NULL,
	[FornecedorId] [uniqueidentifier] NOT NULL,
	[NumeroDocumento] [nvarchar](20) NOT NULL,
	[Observacao] [nvarchar](1000) NULL,
	[Valor] [decimal](18, 2) NOT NULL,
	[ValorPago] [decimal](18, 2) NULL,
	[NotaFiscalId] [nvarchar](6) NULL,
 CONSTRAINT [PK_Duplicatas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[Id] [uniqueidentifier] NOT NULL,
	[CNPJ] [nvarchar](14) NOT NULL,
	[Descricao] [nvarchar](1000) NULL,
	[InscricaoEstadual] [nvarchar](13) NOT NULL,
	[Logo] [varbinary](max) NULL,
	[NomeFantasia] [nvarchar](100) NOT NULL,
	[RazaoSocial] [nvarchar](100) NOT NULL,
	[ContatoCelular] [nvarchar](15) NULL,
	[ContatoEmail] [nvarchar](100) NULL,
	[ContatoObservacao] [nvarchar](250) NULL,
	[ContatoTelefoneComercial] [nvarchar](15) NULL,
	[ContatoTelefoneResidencial] [nvarchar](15) NULL,
	[EnderecoBairro] [nvarchar](25) NOT NULL,
	[EnderecoCEP] [nvarchar](8) NULL,
	[EnderecoComplemento] [nvarchar](250) NULL,
	[EnderecoNumero] [int] NOT NULL,
	[EnderecoRua] [nvarchar](100) NOT NULL,
	[EnderecoCidadeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](25) NULL,
	[Sigla] [nvarchar](2) NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosCheques]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosCheques](
	[FornecedorId] [uniqueidentifier] NULL,
	[Motivo] [nvarchar](100) NULL,
	[ChequeId] [uniqueidentifier] NOT NULL,
	[DataEvento] [datetime2](7) NOT NULL,
	[Situacao] [int] NOT NULL,
 CONSTRAINT [PK_EstadosCheques] PRIMARY KEY CLUSTERED 
(
	[ChequeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedores]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedores](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[ContatoObservacao] [nvarchar](250) NULL,
	[Descricao] [nvarchar](1000) NULL,
	[ContatoCelular] [nvarchar](15) NULL,
	[ContatoEmail] [nvarchar](100) NULL,
	[ContatoTelefoneComercial] [nvarchar](15) NULL,
	[ContatoTelefoneResidencial] [nvarchar](15) NULL,
	[EnderecoBairro] [nvarchar](25) NOT NULL,
	[EnderecoCEP] [nvarchar](8) NULL,
	[EnderecoComplemento] [nvarchar](250) NULL,
	[EnderecoNumero] [int] NOT NULL,
	[EnderecoRua] [nvarchar](100) NOT NULL,
	[DocumentoEstadual] [nvarchar](14) NULL,
	[DocumentoNacional] [nvarchar](14) NOT NULL,
	[Tipo] [int] NOT NULL,
	[EnderecoCidadeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Fornecedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Observacao] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutoAplicacao]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoAplicacao](
	[AplicacaoId] [uniqueidentifier] NOT NULL,
	[ProdutoId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ProdutoAplicacao] PRIMARY KEY CLUSTERED 
(
	[AplicacaoId] ASC,
	[ProdutoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProdutoFornecedor]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProdutoFornecedor](
	[ProdutoId] [uniqueidentifier] NOT NULL,
	[FornecedorId] [uniqueidentifier] NOT NULL,
	[Disponibilidade] [int] NOT NULL,
	[PrecoCusto] [decimal](18, 2) NOT NULL,
	[ReferenciaFornecedor] [nvarchar](25) NULL,
 CONSTRAINT [PK_ProdutoFornecedor] PRIMARY KEY CLUSTERED 
(
	[ProdutoId] ASC,
	[FornecedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 21/06/2018 23:59:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[PrecoVenda] [decimal](18, 2) NOT NULL,
	[EstoqueMinimo] [int] NOT NULL,
	[MarcaId] [uniqueidentifier] NOT NULL,
	[Estoque] [int] NOT NULL,
	[EstoqueIdeal] [int] NOT NULL,
	[ReferenciaAuxiliar] [nvarchar](50) NULL,
	[ReferenciaFabricante] [nvarchar](25) NULL,
	[ReferenciaOriginal] [nvarchar](25) NULL,
	[Unidade] [int] NOT NULL,
	[ReferenciaUrl] [nvarchar](150) NULL,
	[EstoqueLocalizacao] [nvarchar](4) NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicos]    Script Date: 21/06/2018 23:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicos](
	[Id] [uniqueidentifier] NOT NULL,
	[Detalhes] [nvarchar](250) NOT NULL,
	[PrecoServico] [decimal](18, 2) NOT NULL,
	[VendaId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Servicos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendaProduto]    Script Date: 21/06/2018 23:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendaProduto](
	[ProdutoId] [uniqueidentifier] NOT NULL,
	[VendaId] [uniqueidentifier] NOT NULL,
	[Acrescimo] [decimal](18, 2) NOT NULL,
	[Desconto] [decimal](18, 2) NOT NULL,
	[Quantidade] [int] NOT NULL,
	[PrecoFinal] [decimal](18, 2) NOT NULL,
	[PrecoVenda] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_VendaProduto] PRIMARY KEY CLUSTERED 
(
	[ProdutoId] ASC,
	[VendaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 21/06/2018 23:59:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendas](
	[Id] [uniqueidentifier] NOT NULL,
	[ClienteId] [uniqueidentifier] NOT NULL,
	[DataVenda] [datetime2](7) NOT NULL,
	[Detalhes] [nvarchar](1000) NULL,
	[Status] [int] NOT NULL,
	[QuantidadeItens] [int] NOT NULL,
	[TotalVenda] [decimal](18, 2) NOT NULL,
	[CondicaoPagamento] [nvarchar](max) NULL,
 CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 21/06/2018 23:59:16 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 21/06/2018 23:59:16 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cheques_BancoId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Cheques_BancoId] ON [dbo].[Cheques]
(
	[BancoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cheques_ClienteId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Cheques_ClienteId] ON [dbo].[Cheques]
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cheques_NumeroCheque]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Cheques_NumeroCheque] ON [dbo].[Cheques]
(
	[NumeroCheque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cidades_EstadoId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Cidades_EstadoId] ON [dbo].[Cidades]
(
	[EstadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Clientes_Endereco_CidadeId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Clientes_Endereco_CidadeId] ON [dbo].[Clientes]
(
	[Endereco_CidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Duplicatas_FornecedorId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Duplicatas_FornecedorId] ON [dbo].[Duplicatas]
(
	[FornecedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Duplicatas_NumeroDocumento]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Duplicatas_NumeroDocumento] ON [dbo].[Duplicatas]
(
	[NumeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Empresa_EnderecoCidadeId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Empresa_EnderecoCidadeId] ON [dbo].[Empresa]
(
	[EnderecoCidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EstadosCheques_FornecedorId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_EstadosCheques_FornecedorId] ON [dbo].[EstadosCheques]
(
	[FornecedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fornecedores_EnderecoCidadeId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Fornecedores_EnderecoCidadeId] ON [dbo].[Fornecedores]
(
	[EnderecoCidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProdutoAplicacao_ProdutoId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_ProdutoAplicacao_ProdutoId] ON [dbo].[ProdutoAplicacao]
(
	[ProdutoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProdutoFornecedor_FornecedorId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_ProdutoFornecedor_FornecedorId] ON [dbo].[ProdutoFornecedor]
(
	[FornecedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Produtos_MarcaId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Produtos_MarcaId] ON [dbo].[Produtos]
(
	[MarcaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Produtos_ReferenciaAuxiliar]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Produtos_ReferenciaAuxiliar] ON [dbo].[Produtos]
(
	[ReferenciaAuxiliar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Produtos_ReferenciaFabricante]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Produtos_ReferenciaFabricante] ON [dbo].[Produtos]
(
	[ReferenciaFabricante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Produtos_ReferenciaOriginal]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Produtos_ReferenciaOriginal] ON [dbo].[Produtos]
(
	[ReferenciaOriginal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Servicos_VendaId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Servicos_VendaId] ON [dbo].[Servicos]
(
	[VendaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendaProduto_VendaId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_VendaProduto_VendaId] ON [dbo].[VendaProduto]
(
	[VendaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vendas_ClienteId]    Script Date: 21/06/2018 23:59:16 ******/
CREATE NONCLUSTERED INDEX [IX_Vendas_ClienteId] ON [dbo].[Vendas]
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT (N'') FOR [Nome]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ((0)) FOR [Pontuacao]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ((0)) FOR [Tipo]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [Endereco_CidadeId]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT (N'') FOR [EnderecoBairro]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT ((0)) FOR [EnderecoNumero]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT (N'') FOR [EnderecoRua]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [EnderecoCidadeId]
GO
ALTER TABLE [dbo].[EstadosCheques] ADD  DEFAULT ((0)) FOR [Situacao]
GO
ALTER TABLE [dbo].[Fornecedores] ADD  DEFAULT (N'') FOR [EnderecoBairro]
GO
ALTER TABLE [dbo].[Fornecedores] ADD  DEFAULT ((0)) FOR [EnderecoNumero]
GO
ALTER TABLE [dbo].[Fornecedores] ADD  DEFAULT (N'') FOR [EnderecoRua]
GO
ALTER TABLE [dbo].[Fornecedores] ADD  DEFAULT (N'') FOR [DocumentoNacional]
GO
ALTER TABLE [dbo].[Fornecedores] ADD  DEFAULT ((0)) FOR [Tipo]
GO
ALTER TABLE [dbo].[Fornecedores] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [EnderecoCidadeId]
GO
ALTER TABLE [dbo].[Produtos] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [MarcaId]
GO
ALTER TABLE [dbo].[Produtos] ADD  DEFAULT ((0)) FOR [Estoque]
GO
ALTER TABLE [dbo].[Produtos] ADD  DEFAULT ((0)) FOR [EstoqueIdeal]
GO
ALTER TABLE [dbo].[Produtos] ADD  DEFAULT ((0)) FOR [Unidade]
GO
ALTER TABLE [dbo].[VendaProduto] ADD  DEFAULT ((0)) FOR [Quantidade]
GO
ALTER TABLE [dbo].[VendaProduto] ADD  DEFAULT ((0.0)) FOR [PrecoFinal]
GO
ALTER TABLE [dbo].[VendaProduto] ADD  DEFAULT ((0.0)) FOR [PrecoVenda]
GO
ALTER TABLE [dbo].[Vendas] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Vendas] ADD  DEFAULT ((0)) FOR [QuantidadeItens]
GO
ALTER TABLE [dbo].[Vendas] ADD  DEFAULT ((0.0)) FOR [TotalVenda]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cheques]  WITH CHECK ADD  CONSTRAINT [FK_Cheques_Bancos_BancoId] FOREIGN KEY([BancoId])
REFERENCES [dbo].[Bancos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cheques] CHECK CONSTRAINT [FK_Cheques_Bancos_BancoId]
GO
ALTER TABLE [dbo].[Cheques]  WITH CHECK ADD  CONSTRAINT [FK_Cheques_Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cheques] CHECK CONSTRAINT [FK_Cheques_Clientes_ClienteId]
GO
ALTER TABLE [dbo].[Cidades]  WITH CHECK ADD  CONSTRAINT [FK_Cidades_Estados_EstadoId] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cidades] CHECK CONSTRAINT [FK_Cidades_Estados_EstadoId]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Cidades_Endereco_CidadeId] FOREIGN KEY([Endereco_CidadeId])
REFERENCES [dbo].[Cidades] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Cidades_Endereco_CidadeId]
GO
ALTER TABLE [dbo].[Duplicatas]  WITH CHECK ADD  CONSTRAINT [FK_Duplicatas_Fornecedores_FornecedorId] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Duplicatas] CHECK CONSTRAINT [FK_Duplicatas_Fornecedores_FornecedorId]
GO
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Cidades_EnderecoCidadeId] FOREIGN KEY([EnderecoCidadeId])
REFERENCES [dbo].[Cidades] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Cidades_EnderecoCidadeId]
GO
ALTER TABLE [dbo].[EstadosCheques]  WITH CHECK ADD  CONSTRAINT [FK_EstadosCheques_Cheques_ChequeId] FOREIGN KEY([ChequeId])
REFERENCES [dbo].[Cheques] ([Id])
GO
ALTER TABLE [dbo].[EstadosCheques] CHECK CONSTRAINT [FK_EstadosCheques_Cheques_ChequeId]
GO
ALTER TABLE [dbo].[EstadosCheques]  WITH CHECK ADD  CONSTRAINT [FK_EstadosCheques_Fornecedores_FornecedorId] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedores] ([Id])
GO
ALTER TABLE [dbo].[EstadosCheques] CHECK CONSTRAINT [FK_EstadosCheques_Fornecedores_FornecedorId]
GO
ALTER TABLE [dbo].[Fornecedores]  WITH CHECK ADD  CONSTRAINT [FK_Fornecedores_Cidades_EnderecoCidadeId] FOREIGN KEY([EnderecoCidadeId])
REFERENCES [dbo].[Cidades] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Fornecedores] CHECK CONSTRAINT [FK_Fornecedores_Cidades_EnderecoCidadeId]
GO
ALTER TABLE [dbo].[ProdutoAplicacao]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoAplicacao_Aplicacoes_AplicacaoId] FOREIGN KEY([AplicacaoId])
REFERENCES [dbo].[Aplicacoes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProdutoAplicacao] CHECK CONSTRAINT [FK_ProdutoAplicacao_Aplicacoes_AplicacaoId]
GO
ALTER TABLE [dbo].[ProdutoAplicacao]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoAplicacao_Produtos_ProdutoId] FOREIGN KEY([ProdutoId])
REFERENCES [dbo].[Produtos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProdutoAplicacao] CHECK CONSTRAINT [FK_ProdutoAplicacao_Produtos_ProdutoId]
GO
ALTER TABLE [dbo].[ProdutoFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoFornecedor_Fornecedores_FornecedorId] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProdutoFornecedor] CHECK CONSTRAINT [FK_ProdutoFornecedor_Fornecedores_FornecedorId]
GO
ALTER TABLE [dbo].[ProdutoFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoFornecedor_Produtos_ProdutoId] FOREIGN KEY([ProdutoId])
REFERENCES [dbo].[Produtos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProdutoFornecedor] CHECK CONSTRAINT [FK_ProdutoFornecedor_Produtos_ProdutoId]
GO
ALTER TABLE [dbo].[Servicos]  WITH CHECK ADD  CONSTRAINT [FK_Servicos_Vendas_VendaId] FOREIGN KEY([VendaId])
REFERENCES [dbo].[Vendas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Servicos] CHECK CONSTRAINT [FK_Servicos_Vendas_VendaId]
GO
ALTER TABLE [dbo].[VendaProduto]  WITH CHECK ADD  CONSTRAINT [FK_VendaProduto_Produtos_ProdutoId] FOREIGN KEY([ProdutoId])
REFERENCES [dbo].[Produtos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendaProduto] CHECK CONSTRAINT [FK_VendaProduto_Produtos_ProdutoId]
GO
ALTER TABLE [dbo].[VendaProduto]  WITH CHECK ADD  CONSTRAINT [FK_VendaProduto_Vendas_VendaId] FOREIGN KEY([VendaId])
REFERENCES [dbo].[Vendas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendaProduto] CHECK CONSTRAINT [FK_VendaProduto_Vendas_VendaId]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Clientes_ClienteId] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Clientes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Clientes_ClienteId]
GO
USE [master]
GO
ALTER DATABASE [RCMDatabase] SET  READ_WRITE 
GO
