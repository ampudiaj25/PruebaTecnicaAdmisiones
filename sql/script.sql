USE [DBAdmisiones]
GO
/****** Object:  Table [dbo].[Aspirante]    Script Date: 1/07/2024 5:47:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aspirante](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[primerNombre] [varchar](100) NOT NULL,
	[segundoNombre] [varchar](100) NOT NULL,
	[primerApellido] [varchar](100) NOT NULL,
	[segundoApellido] [varchar](100) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[codigoPaisNacimiento] [int] NOT NULL,
	[codigoDeptoNacimiento] [int] NOT NULL,
	[codigoCiudadNacimiento] [int] NOT NULL,
	[grupoSanguineo] [varchar](10) NOT NULL,
	[codigoTipoDoc] [int] NOT NULL,
	[nroDoc] [varchar](100) NOT NULL,
	[fechaExpDoc] [date] NOT NULL,
	[codigoPaisExpDoc] [int] NOT NULL,
	[codigoDeptoExpDoc] [int] NOT NULL,
	[codigoCiudadExpDoc] [int] NOT NULL,
	[sexo] [char](1) NOT NULL,
	[estadoCivil] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Aspirante] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 1/07/2024 5:47:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigoDepartamento] [int] NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 1/07/2024 5:47:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[codigoPais] [int] NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripcion]    Script Date: 1/07/2024 5:47:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripcion](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[tipoAspirante] [varchar](100) NOT NULL,
	[codigoAspirante] [int] NOT NULL,
	[modalidad] [varchar](100) NOT NULL,
	[codigoSede] [int] NOT NULL,
	[codigoPrograma] [int] NOT NULL,
	[periodoAcademico] [varchar](100) NOT NULL,
	[estado] [varchar](100) NOT NULL,
 CONSTRAINT [PK_inscripcion] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 1/07/2024 5:47:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programa]    Script Date: 1/07/2024 5:47:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programa](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_Programa] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 1/07/2024 5:47:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sede](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 1/07/2024 5:47:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NOT NULL,
	[estado] [char](1) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([codigo], [codigoDepartamento], [nombre], [estado]) VALUES (1, 1, N'Cali', N'A')
INSERT [dbo].[Ciudad] ([codigo], [codigoDepartamento], [nombre], [estado]) VALUES (2, 3, N'Medellin', N'A')
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 

INSERT [dbo].[Departamento] ([codigo], [codigoPais], [nombre], [estado]) VALUES (1, 1, N'Valle del Cauca', N'A')
INSERT [dbo].[Departamento] ([codigo], [codigoPais], [nombre], [estado]) VALUES (3, 1, N'Antioquia', N'A')
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([codigo], [nombre], [estado]) VALUES (1, N'Colombia', N'A')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
SET IDENTITY_INSERT [dbo].[Programa] ON 

INSERT [dbo].[Programa] ([codigo], [nombre], [estado]) VALUES (1, N'Psicologia', N'A')
INSERT [dbo].[Programa] ([codigo], [nombre], [estado]) VALUES (2, N'Ingenieria', N'A')
SET IDENTITY_INSERT [dbo].[Programa] OFF
GO
SET IDENTITY_INSERT [dbo].[Sede] ON 

INSERT [dbo].[Sede] ([codigo], [nombre], [estado]) VALUES (1, N'Medellin', N'A')
INSERT [dbo].[Sede] ([codigo], [nombre], [estado]) VALUES (2, N'Cali', N'A')
SET IDENTITY_INSERT [dbo].[Sede] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON 

INSERT [dbo].[TipoDocumento] ([codigo], [nombre], [estado]) VALUES (1, N'CC', N'A')
INSERT [dbo].[TipoDocumento] ([codigo], [nombre], [estado]) VALUES (2, N'TI', N'A')
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
GO
ALTER TABLE [dbo].[Aspirante]  WITH CHECK ADD  CONSTRAINT [FK_Aspirante_Ciudad] FOREIGN KEY([codigoCiudadNacimiento])
REFERENCES [dbo].[Ciudad] ([codigo])
GO
ALTER TABLE [dbo].[Aspirante] CHECK CONSTRAINT [FK_Aspirante_Ciudad]
GO
ALTER TABLE [dbo].[Aspirante]  WITH CHECK ADD  CONSTRAINT [FK_Aspirante_Ciudad1] FOREIGN KEY([codigoCiudadExpDoc])
REFERENCES [dbo].[Ciudad] ([codigo])
GO
ALTER TABLE [dbo].[Aspirante] CHECK CONSTRAINT [FK_Aspirante_Ciudad1]
GO
ALTER TABLE [dbo].[Aspirante]  WITH CHECK ADD  CONSTRAINT [FK_Aspirante_Departamento] FOREIGN KEY([codigoDeptoNacimiento])
REFERENCES [dbo].[Departamento] ([codigo])
GO
ALTER TABLE [dbo].[Aspirante] CHECK CONSTRAINT [FK_Aspirante_Departamento]
GO
ALTER TABLE [dbo].[Aspirante]  WITH CHECK ADD  CONSTRAINT [FK_Aspirante_Departamento1] FOREIGN KEY([codigoDeptoExpDoc])
REFERENCES [dbo].[Departamento] ([codigo])
GO
ALTER TABLE [dbo].[Aspirante] CHECK CONSTRAINT [FK_Aspirante_Departamento1]
GO
ALTER TABLE [dbo].[Aspirante]  WITH CHECK ADD  CONSTRAINT [FK_Aspirante_Pais] FOREIGN KEY([codigoPaisNacimiento])
REFERENCES [dbo].[Pais] ([codigo])
GO
ALTER TABLE [dbo].[Aspirante] CHECK CONSTRAINT [FK_Aspirante_Pais]
GO
ALTER TABLE [dbo].[Aspirante]  WITH CHECK ADD  CONSTRAINT [FK_Aspirante_Pais1] FOREIGN KEY([codigoPaisExpDoc])
REFERENCES [dbo].[Pais] ([codigo])
GO
ALTER TABLE [dbo].[Aspirante] CHECK CONSTRAINT [FK_Aspirante_Pais1]
GO
ALTER TABLE [dbo].[Aspirante]  WITH CHECK ADD  CONSTRAINT [FK_Aspirante_TipoDocumento] FOREIGN KEY([codigoTipoDoc])
REFERENCES [dbo].[TipoDocumento] ([codigo])
GO
ALTER TABLE [dbo].[Aspirante] CHECK CONSTRAINT [FK_Aspirante_TipoDocumento]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Departamento] FOREIGN KEY([codigoDepartamento])
REFERENCES [dbo].[Departamento] ([codigo])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Departamento]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Pais] FOREIGN KEY([codigoPais])
REFERENCES [dbo].[Pais] ([codigo])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Pais]
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_inscripcion_Aspirante1] FOREIGN KEY([codigoAspirante])
REFERENCES [dbo].[Aspirante] ([codigo])
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [FK_inscripcion_Aspirante1]
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_inscripcion_Programa1] FOREIGN KEY([codigoPrograma])
REFERENCES [dbo].[Programa] ([codigo])
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [FK_inscripcion_Programa1]
GO
ALTER TABLE [dbo].[Inscripcion]  WITH CHECK ADD  CONSTRAINT [FK_inscripcion_Sede1] FOREIGN KEY([codigoSede])
REFERENCES [dbo].[Sede] ([codigo])
GO
ALTER TABLE [dbo].[Inscripcion] CHECK CONSTRAINT [FK_inscripcion_Sede1]
GO
