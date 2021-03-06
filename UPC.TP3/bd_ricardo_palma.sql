USE [BD_CLINICA_RP]
GO
/****** Object:  Table [dbo].[T_ANTECEDENTES]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ANTECEDENTES](
	[idAntecedentes] [int] NOT NULL,
	[dscAntecedentes] [varchar](100) NULL,
	[fechaCreacion] [datetime] NULL,
	[idHistoriaClinica] [int] NOT NULL,
 CONSTRAINT [XPKT_ANTECEDENTES] PRIMARY KEY CLUSTERED 
(
	[idAntecedentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_BIEN]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BIEN](
	[codBien] [int] NOT NULL,
	[dscBien] [varchar](100) NULL,
	[fecAdquisicion] [datetime] NULL,
 CONSTRAINT [XPKT_BIEN] PRIMARY KEY CLUSTERED 
(
	[codBien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EMPLEADO]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_EMPLEADO](
	[idEmpleado] [int] NOT NULL,
	[nroDni] [int] NULL,
	[nomEmpleado] [varchar](200) NULL,
	[fecIngreso] [datetime] NULL,
	[stdEmplead] [char](3) NULL,
	[dscCargo] [varchar](100) NULL,
	[dscProfesion] [varchar](100) NULL,
	[dscArea] [varchar](100) NULL,
	[dscCorreo] [varchar](100) NULL,
	[idEspecialidad] [int] NULL,
	[codPersona] [int] NULL,
 CONSTRAINT [XPKT_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EMPRESA]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_EMPRESA](
	[codEmpresa] [int] NOT NULL,
	[nroRuc] [varchar](20) NULL,
	[razonSocial] [varchar](300) NULL,
	[direccion] [varchar](300) NULL,
	[telefono] [varchar](20) NULL,
	[codPersona] [int] NULL,
 CONSTRAINT [XPKT_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[codEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ESPECIALIDAD_MEDICA]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ESPECIALIDAD_MEDICA](
	[idEspecialidad] [int] NOT NULL,
	[nomEspecialidad] [varchar](100) NULL,
 CONSTRAINT [XPKT_ESPECIALIDAD_MEDICA] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EVALUACION_SIGNOS_VITALES]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_EVALUACION_SIGNOS_VITALES](
	[idEvaluacionSignosVitales] [int] NOT NULL,
	[pulso] [int] NULL,
	[temperatura] [decimal](8, 2) NULL,
	[presionSistolica] [decimal](8, 2) NULL,
	[presionDiastolica] [decimal](8, 2) NULL,
	[idResultadoExamen] [int] NULL,
 CONSTRAINT [XPKT_EVALUACION_] PRIMARY KEY CLUSTERED 
(
	[idEvaluacionSignosVitales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_EVALUACION_TISS]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_EVALUACION_TISS](
	[idEvaluacionTiss] [int] NOT NULL,
	[definicion] [varchar](100) NULL,
	[puntuacion] [varchar](100) NULL,
	[clase] [varchar](100) NULL,
	[idResultadoExamen] [int] NULL,
 CONSTRAINT [XPKT_] PRIMARY KEY CLUSTERED 
(
	[idEvaluacionTiss] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EVENTO_HISTORIA_CLINICA]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_EVENTO_HISTORIA_CLINICA](
	[idDetalleHC] [int] NOT NULL,
	[idResultado] [int] NULL,
	[fechaEjecucion] [datetime] NULL,
	[idResultadoExamen] [int] NULL,
	[idHistoriaClinica] [int] NOT NULL,
	[nroHistoriaClinica] [varchar](20) NOT NULL,
	[idPaciente] [int] NOT NULL,
	[tipoEvento] [varchar](50) NULL,
 CONSTRAINT [XPKT_DETALLE_HISTORIA_CLINICA] PRIMARY KEY CLUSTERED 
(
	[idDetalleHC] ASC,
	[idHistoriaClinica] ASC,
	[nroHistoriaClinica] ASC,
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EXAMEN_TRATAMIENTO]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_EXAMEN_TRATAMIENTO](
	[idExamenTratamiento] [int] NOT NULL,
	[idTratamiento] [int] NOT NULL,
	[idResultadoExamen] [int] NOT NULL,
 CONSTRAINT [XPKT_EXAMEN_TRATAMIENTO] PRIMARY KEY CLUSTERED 
(
	[idExamenTratamiento] ASC,
	[idTratamiento] ASC,
	[idResultadoExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_HISTORIA_CLINICA]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_HISTORIA_CLINICA](
	[idHistoriaClinica] [int] NOT NULL,
	[nroHistoriaClinica] [varchar](20) NOT NULL,
	[fechaCreacion] [datetime] NULL,
	[tipoEvento] [varchar](100) NULL,
	[idPaciente] [int] NOT NULL,
 CONSTRAINT [XPKT_HISTORIA_CLINICA] PRIMARY KEY CLUSTERED 
(
	[idHistoriaClinica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_INMUEBLE]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_INMUEBLE](
	[codInmueble] [int] NOT NULL,
	[dscTipoEstado] [varchar](100) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [XPKT_INMUEBLE] PRIMARY KEY CLUSTERED 
(
	[codInmueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MODELO]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MODELO](
	[codModelo] [int] NOT NULL,
	[nomModelo] [varchar](100) NULL,
	[dscMarca] [varchar](100) NULL,
 CONSTRAINT [XPKT_MODELO] PRIMARY KEY CLUSTERED 
(
	[codModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MUEBLE]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MUEBLE](
	[codMueble] [int] NOT NULL,
	[dscFuncion] [varchar](100) NULL,
	[dscAplicacionMedica] [varchar](100) NULL,
	[garantia] [bit] NULL,
	[tipoMueble] [char](3) NULL,
	[codBien] [int] NULL,
	[codEmpresa] [int] NULL,
	[codModelo] [int] NULL,
 CONSTRAINT [XPKT_MUEBLE] PRIMARY KEY CLUSTERED 
(
	[codMueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ORDEN_ATENCION]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ORDEN_ATENCION](
	[idAtencion] [int] NOT NULL,
	[fechaInicio] [datetime] NULL,
	[fechaFin] [datetime] NULL,
	[tipoEntregaResultado] [varchar](100) NULL,
	[estado] [char](3) NULL,
	[idReserva] [int] NULL,
 CONSTRAINT [XPKT_ORDEN_ATENCION] PRIMARY KEY CLUSTERED 
(
	[idAtencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PACIENTE]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PACIENTE](
	[idPaciente] [int] NOT NULL,
	[dniPaciente] [varchar](10) NULL,
	[fechNacimiento] [datetime] NULL,
	[segmentacion] [varchar](100) NULL,
	[estado] [char](3) NULL,
	[codPersona] [int] NULL,
	[dscCorreoFamiliar] [varchar](100) NULL,
 CONSTRAINT [XPKT_PACIENTE] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PERSONA]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PERSONA](
	[codPersona] [int] NOT NULL,
	[nompersona] [varchar](100) NULL,
 CONSTRAINT [XPKT_PERSONA] PRIMARY KEY CLUSTERED 
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_REGISTRO_UCI]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_REGISTRO_UCI](
	[idRegistro] [int] NOT NULL,
	[fechaIngreso] [datetime] NULL,
	[fechaSalida] [datetime] NULL,
 CONSTRAINT [XPKT_REGISTRO_UCI] PRIMARY KEY CLUSTERED 
(
	[idRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_RESERVA_SERVICIO]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_RESERVA_SERVICIO](
	[idReserva] [int] NOT NULL,
	[fecReserva] [datetime] NULL,
	[tipoAtencion] [varchar](100) NULL,
	[tipoCliente] [varchar](100) NULL,
	[estado] [char](3) NULL,
	[idEmpleado] [int] NULL,
	[idServicio] [int] NULL,
	[idPaciente] [int] NULL,
 CONSTRAINT [XPKT_RESERVA_SERVICIO] PRIMARY KEY CLUSTERED 
(
	[idReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_RESULTADO_ATENCION]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_RESULTADO_ATENCION](
	[idResultado] [int] NOT NULL,
	[diagnostico] [varchar](100) NULL,
	[tratamiento] [varchar](100) NULL,
	[fecResultado] [datetime] NULL,
	[estado] [char](3) NULL,
	[idAtencion] [int] NULL,
	[idEmpleado] [int] NULL,
 CONSTRAINT [XPKT_RESULTADO_ATENCION] PRIMARY KEY CLUSTERED 
(
	[idResultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_RESULTADO_EXAMEN]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_RESULTADO_EXAMEN](
	[idResultadoExamen] [int] NOT NULL,
	[fechaExamen] [datetime] NULL,
	[fechaResultado] [datetime] NULL,
	[diagnostico] [varchar](200) NULL,
	[tipoExamen] [varchar](100) NULL,
	[imagenResultado] [image] NULL,
	[idResultado] [int] NULL,
 CONSTRAINT [XPKT_RESULTADO_EXAMEN] PRIMARY KEY CLUSTERED 
(
	[idResultadoExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ROL]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ROL](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[nombreRol] [varchar](100) NULL,
	[estRol] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SERVICIO_SALUD]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SERVICIO_SALUD](
	[idServicio] [int] NOT NULL,
	[tipoServicio] [varchar](100) NULL,
	[nomServicio] [varchar](100) NULL,
	[idEspecialidad] [int] NULL,
 CONSTRAINT [XPKT_SERVICIO_SALUD] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SOLICITUD_UCI]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SOLICITUD_UCI](
	[idSolicitud] [int] NOT NULL,
	[fechaSolicitud] [datetime] NULL,
	[observacion] [varchar](50) NULL,
	[estadoSolicitud] [char](3) NULL,
	[gravedadPaciente] [varchar](30) NULL,
	[idPaciente] [int] NULL,
	[numeroSolicitud] [varchar](20) NULL,
	[fechaEvaluacion] [datetime] NULL,
	[tipoTraslado] [varchar](150) NULL,
	[dscMedicinaTraslado] [varchar](100) NULL,
	[tipoEquipoMedico] [varchar](100) NULL,
	[idEmpleado] [int] NULL,
	[idResultado] [int] NULL,
	[idRegistro] [int] NULL,
 CONSTRAINT [XPKT_SOLICITUD_MANTENIMIENTO] PRIMARY KEY CLUSTERED 
(
	[idSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TRATAMIENTO_UCI]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TRATAMIENTO_UCI](
	[idTratamiento] [int] IDENTITY(1,1) NOT NULL,
	[fechaTratamiento] [datetime] NULL,
	[resultado] [varchar](200) NULL,
	[observacion] [varchar](200) NULL,
	[medicinaTratamiento] [varchar](200) NULL,
	[frecuencia] [varchar](15) NULL,
	[idSolicitud] [int] NULL,
 CONSTRAINT [XPKT_T_TRATAMIENTO_UCI] PRIMARY KEY CLUSTERED 
(
	[idTratamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_USUARIO]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_USUARIO](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](100) NULL,
	[email] [varchar](200) NULL,
	[contrasena] [varchar](100) NULL,
	[idEmpleado] [int] NULL,
	[EstUsuario] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_USUARIO_ROL]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_USUARIO_ROL](
	[idUsuario] [int] NOT NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [PK_T_USUARIO_ROL] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC,
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[T_ANTECEDENTES] ([idAntecedentes], [dscAntecedentes], [fechaCreacion], [idHistoriaClinica]) VALUES (1, N'Familiares con diabetes', CAST(N'2015-04-09 08:40:00.000' AS DateTime), 1)
INSERT [dbo].[T_ANTECEDENTES] ([idAntecedentes], [dscAntecedentes], [fechaCreacion], [idHistoriaClinica]) VALUES (2, N'Familiares con hipertensión', CAST(N'2015-04-09 08:40:00.000' AS DateTime), 1)
INSERT [dbo].[T_ANTECEDENTES] ([idAntecedentes], [dscAntecedentes], [fechaCreacion], [idHistoriaClinica]) VALUES (3, N'Tuberculosis en la infancia', CAST(N'2015-03-09 08:20:00.000' AS DateTime), 2)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (1, 47347920, N'Cesar Aldana Montero', CAST(N'2017-04-02 07:58:47.447' AS DateTime), N'ACT', N'Jefe de Mantenimiento', N'Ingeniero Eléctrico', N'Pediatria', N'cesaraldanam@gmail.com', 1, 5)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (2, 44347423, N'Vicente Martel', CAST(N'2015-12-04 00:00:00.000' AS DateTime), N'ACT', N'Jefe de Mantenimiento', N'Ingeniero Eléctrico', N'Mantenimiento de Equipos Médicos', N'vmartelanaya1@gmail.com', 2, 6)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (3, 54336425, N'Katherine Aylas', CAST(N'2015-12-04 00:00:00.000' AS DateTime), N'ACT', N'Técnico de Mantenimiento Interno', N'Ingeniero Eléctrico', N'Mantenimiento de Equipos Médicos', N'kaylasaguilar@gmail.com', 3, 7)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (4, 42578316, N'Frank Chara', CAST(N'2012-05-11 00:00:00.000' AS DateTime), N'ACT', N'Jefe de Mantenimiento', N'Ingeniero Electrico', N'Medicina General', N'chara.20.90@gmail.com', 4, 8)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (5, 42261235, N'Miguel Ventura', CAST(N'2015-02-10 00:00:00.000' AS DateTime), N'ACT', N'Jefe de Pediatria', N'Médico', N'Pediatria', N'mguel.navarro@gmail.com', 5, 9)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (6, 31374178, N'Yaqui Soliz', CAST(N'2011-02-11 00:00:00.000' AS DateTime), N'ACT', N'Enfermero', N'Licenciado en Enfermeria', N'Medicina General', N'ysoliz11111@gmail.com', 6, 10)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (7, 52451238, N'Claudia Paredes', CAST(N'2015-09-07 00:00:00.000' AS DateTime), N'ACT', N'Técnico de Mantenimiento Interno', N'Ingeniero Eléctrico', N'Mantenimiento de Equipos Médicos', N'cparedes888888@gmail.com', 7, 11)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (8, 42457191, N'Angeli Jimenez', CAST(N'2011-03-10 00:00:00.000' AS DateTime), N'ACT', N'Médico', N'Doctor', N'Cardiología', N'angeli312@gmail.com', 8, 12)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (9, 41363169, N'Pamela Hernandez', CAST(N'2012-10-04 00:00:00.000' AS DateTime), N'ACT', N'Médico', N'Doctor', N'Mantenimiento de Equipos Médicos', N'pamehernandez312@gmail.com', 9, 13)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (10, 32464234, N'Rosa Morales', CAST(N'2012-05-13 00:00:00.000' AS DateTime), N'ACT', N'Auxiliar de Mantenimiento', N'Ingeniero Eléctrico', N'Cardiología', N'rosamorales312@gmail.com', 10, 14)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (11, 42475235, N'Daniel Medina', CAST(N'2012-10-04 00:00:00.000' AS DateTime), N'ACT', N'Auxiliar de Mantenimiento', N'Ingeniero Eléctrico', N'Mantenimiento de Equipos Médicos', N'danielMedina123@gmail.com', 11, 15)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (12, 42475299, N'Joselyn Rojas', CAST(N'2012-11-06 00:00:00.000' AS DateTime), N'ACT', N'Médico Intensivista', N'Doctor', N'Unidad de Cuidados Intensivos', N'joselynrojas91@gmail.com', 12, 16)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (13, 46462347, N'Jonathan Bolo', CAST(N'2017-01-01 00:00:00.000' AS DateTime), N'ACT', N'Médico Intensivista', N'Doctor', N'Unidad de Cuidados Intensivos', N'jbolo.des@gmail.com', 13, 17)
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (1, N'Anatomía Patológica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (2, N'Anestesiología y Recuperación')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (3, N'Anestesiología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (4, N'Cardiología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (5, N'Cardiología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (6, N'Cirugía General')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (7, N'Cirugía Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (8, N'Cirugía Plástica y Reconstructiva')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (9, N'Cirugía Torácica General')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (10, N'Cirugía Cardiovascular Torácica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (11, N'Dermatología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (12, N'Endocrinología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (13, N'Gastroenterología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (14, N'Geriatría y Gerontología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (15, N'Ginecología y Obstetricia')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (16, N'Ginecología Oncológica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (17, N'Hematología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (18, N'Hematología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (19, N'Infectología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (20, N'Infectología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (21, N'Inmunología Clínica Médica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (22, N'Medicina Crítica Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (23, N'Medicina Crítica y Terapia Intensiva')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (24, N'Medicina de Emergencias')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (25, N'Medicina Interna')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (26, N'Medicina Familiar y Comunitaria')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (27, N'Medicina Física y Rehabilitación')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (28, N'Medicina Materno Fetal')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (29, N'Medicina Paliativa')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (30, N'Nefrología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (31, N'Nefrología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (32, N'Neonatología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (33, N'Neumología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (34, N'Neumología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (35, N'Neurocirugía')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (36, N'Neurología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (37, N'Oftalmología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (38, N'Oftalmología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (39, N'Oncología Médica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (40, N'Oncología Quirúrgica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (41, N'Ortopedia y Traumatología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (42, N'Ortopedia y Traumatología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (43, N'Otorrinolaringología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (44, N'Patología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (45, N'Pediatría')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (46, N'Psicología Clínica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (47, N'Psiquiatría')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (48, N'Radiología e Imágenes Médicas')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (49, N'Radioterapia')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (50, N'Reumatología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (51, N'Urología')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (52, N'Urología Pediátrica')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (53, N'Vascular Periférico')
INSERT [dbo].[T_EVALUACION_SIGNOS_VITALES] ([idEvaluacionSignosVitales], [pulso], [temperatura], [presionSistolica], [presionDiastolica], [idResultadoExamen]) VALUES (1, 130, CAST(38.00 AS Decimal(8, 2)), CAST(140.00 AS Decimal(8, 2)), CAST(145.00 AS Decimal(8, 2)), 1)
INSERT [dbo].[T_EVALUACION_SIGNOS_VITALES] ([idEvaluacionSignosVitales], [pulso], [temperatura], [presionSistolica], [presionDiastolica], [idResultadoExamen]) VALUES (2, 130, CAST(39.00 AS Decimal(8, 2)), CAST(140.00 AS Decimal(8, 2)), CAST(145.00 AS Decimal(8, 2)), 2)
INSERT [dbo].[T_EVALUACION_SIGNOS_VITALES] ([idEvaluacionSignosVitales], [pulso], [temperatura], [presionSistolica], [presionDiastolica], [idResultadoExamen]) VALUES (3, 130, CAST(37.00 AS Decimal(8, 2)), CAST(140.00 AS Decimal(8, 2)), CAST(145.00 AS Decimal(8, 2)), 3)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (1, N'Paro cardiaco o desfibrilación dentro de las 48 hrs', N'4', N'Muy grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (2, N'Ventilación controlada con o sin PEEP', N'4', N'Muy grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (3, N'Ventilación controlada con o sin PEEP', N'4', N'Muy grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (4, N'Ventilación controlada con relajantes musculares continuos o intermitentes', N'4', N'Muy grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (5, N'Infusión arterial contínua', N'4', N'Muy grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (6, N'Alimentación endovenosa central', N'3', N'Grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (7, N'Marcapaso en estado de espera', N'3', N'Grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (8, N'Drenajes toráxicos', N'3', N'Grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (9, N'Ventilación mecánica controlada o asistida', N'3', N'Grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (10, N'CPAP', N'2', N'Grave', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (11, N'Medición de presión venosa central', N'2', N'Moderado', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (12, N'Catéteres periféricos intravenosos (02)', N'2', N'Moderado', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (13, N'Hemodiálisis en paciente estable', N'2', N'Moderado', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (14, N'Respiración espontánea por tubo endotraqueal o traqueotomía (Tubo en T o máscara para traqueotomía)', N'2', N'Moderado', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (15, N'Alimentación por sonda naso u orogástrica', N'2', N'Moderado', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (16, N'Monitoreo de EKG', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (17, N'Signos vitales horarios', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (18, N'Catéter venoso periférico (01)', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (19, N'Anticoagulación terapia crónica', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (20, N'Registro de ingresos y egresos (cada 24 horas)', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (21, N'Exámenes de sangre STAT', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (22, N'Medicación intravenosa programada', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (23, N'Curaciones de rutina', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (24, N'Tracción ortopédica normal', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (25, N'Cuidados de traqueotomía', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (26, N'Úlcera por decúbito', N'1', N'Leve', NULL)
INSERT [dbo].[T_EVALUACION_TISS] ([idEvaluacionTiss], [definicion], [puntuacion], [clase], [idResultadoExamen]) VALUES (27, N'Traqueotomía reciente (menos de 48 horas)', N'2', N'Moderado', NULL)
INSERT [dbo].[T_EVENTO_HISTORIA_CLINICA] ([idDetalleHC], [idResultado], [fechaEjecucion], [idResultadoExamen], [idHistoriaClinica], [nroHistoriaClinica], [idPaciente], [tipoEvento]) VALUES (1, 1, CAST(N'2016-07-03 08:40:00.000' AS DateTime), NULL, 1, N'HC00000001', 1, N'CONSULTA')
INSERT [dbo].[T_EVENTO_HISTORIA_CLINICA] ([idDetalleHC], [idResultado], [fechaEjecucion], [idResultadoExamen], [idHistoriaClinica], [nroHistoriaClinica], [idPaciente], [tipoEvento]) VALUES (2, 2, CAST(N'2016-08-03 08:40:00.000' AS DateTime), NULL, 1, N'HC00000001', 2, N'CONSULTA')
INSERT [dbo].[T_EVENTO_HISTORIA_CLINICA] ([idDetalleHC], [idResultado], [fechaEjecucion], [idResultadoExamen], [idHistoriaClinica], [nroHistoriaClinica], [idPaciente], [tipoEvento]) VALUES (3, 3, CAST(N'2016-09-03 08:40:00.000' AS DateTime), NULL, 1, N'HC00000001', 3, N'CONSULTA')
INSERT [dbo].[T_HISTORIA_CLINICA] ([idHistoriaClinica], [nroHistoriaClinica], [fechaCreacion], [tipoEvento], [idPaciente]) VALUES (1, N'HC00000001', CAST(N'2015-04-09 08:40:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[T_HISTORIA_CLINICA] ([idHistoriaClinica], [nroHistoriaClinica], [fechaCreacion], [tipoEvento], [idPaciente]) VALUES (2, N'HC00000002', CAST(N'2015-03-09 08:20:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[T_HISTORIA_CLINICA] ([idHistoriaClinica], [nroHistoriaClinica], [fechaCreacion], [tipoEvento], [idPaciente]) VALUES (3, N'HC00000003', CAST(N'2015-08-09 15:16:00.000' AS DateTime), NULL, 3)
INSERT [dbo].[T_ORDEN_ATENCION] ([idAtencion], [fechaInicio], [fechaFin], [tipoEntregaResultado], [estado], [idReserva]) VALUES (1, CAST(N'2016-07-01 07:40:00.000' AS DateTime), CAST(N'2016-07-01 08:40:00.000' AS DateTime), N'ACT', N'   ', 1)
INSERT [dbo].[T_ORDEN_ATENCION] ([idAtencion], [fechaInicio], [fechaFin], [tipoEntregaResultado], [estado], [idReserva]) VALUES (2, CAST(N'2016-08-02 07:40:00.000' AS DateTime), CAST(N'2016-08-02 08:40:00.000' AS DateTime), N'ACT', N'   ', 2)
INSERT [dbo].[T_ORDEN_ATENCION] ([idAtencion], [fechaInicio], [fechaFin], [tipoEntregaResultado], [estado], [idReserva]) VALUES (3, CAST(N'2016-09-03 07:40:00.000' AS DateTime), CAST(N'2016-09-03 08:40:00.000' AS DateTime), N'ACT', N'   ', 3)
INSERT [dbo].[T_PACIENTE] ([idPaciente], [dniPaciente], [fechNacimiento], [segmentacion], [estado], [codPersona], [dscCorreoFamiliar]) VALUES (1, N'46462347', CAST(N'1990-12-08 00:00:00.000' AS DateTime), N'A', N'ACT', 16, N'modulouci@gmail.com')
INSERT [dbo].[T_PACIENTE] ([idPaciente], [dniPaciente], [fechNacimiento], [segmentacion], [estado], [codPersona], [dscCorreoFamiliar]) VALUES (2, N'46462452', CAST(N'1991-05-17 00:00:00.000' AS DateTime), N'A', N'ACT', 17, N'modulouci@gmail.com')
INSERT [dbo].[T_PACIENTE] ([idPaciente], [dniPaciente], [fechNacimiento], [segmentacion], [estado], [codPersona], [dscCorreoFamiliar]) VALUES (3, N'46462999', CAST(N'1989-11-11 00:00:00.000' AS DateTime), N'A', N'ACT', 18, N'modulouci@gmail.com')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (1, N'Proveedores Juanita SAC')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (2, N'Proveedores Cesar SAC')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (3, N'Proveedores Martel SAC')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (4, N'Expertos en Mantenimiento de Equipos Médicos SAC')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (5, N'Cesar Aldana Montero')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (6, N'Vicente Martel')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (7, N'Katherine Aylas')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (8, N'Frank Chara')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (9, N'Miguel Ventura')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (10, N'Yaqui Soliz')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (11, N'Claudia Paredes')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (12, N'Angeli Jimenez')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (13, N'Pamela Hernandez')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (14, N'Rosa Morales')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (15, N'Daniel Medina')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (16, N'Joselyn Rojas')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (17, N'Jonathan Bolo')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (18, N'Erika Abregu')
INSERT [dbo].[T_RESERVA_SERVICIO] ([idReserva], [fecReserva], [tipoAtencion], [tipoCliente], [estado], [idEmpleado], [idServicio], [idPaciente]) VALUES (1, CAST(N'2016-01-04 00:00:00.000' AS DateTime), N'Ambulatoria', N'Asegurado', N'ACT', 12, 7, 1)
INSERT [dbo].[T_RESERVA_SERVICIO] ([idReserva], [fecReserva], [tipoAtencion], [tipoCliente], [estado], [idEmpleado], [idServicio], [idPaciente]) VALUES (2, CAST(N'2016-02-05 00:00:00.000' AS DateTime), N'Ambulatoria', N'Asegurado', N'ACT', 12, 7, 2)
INSERT [dbo].[T_RESERVA_SERVICIO] ([idReserva], [fecReserva], [tipoAtencion], [tipoCliente], [estado], [idEmpleado], [idServicio], [idPaciente]) VALUES (3, CAST(N'2016-03-06 00:00:00.000' AS DateTime), N'Ambulatoria', N'Asegurado', N'ACT', 12, 7, 3)
INSERT [dbo].[T_RESULTADO_ATENCION] ([idResultado], [diagnostico], [tratamiento], [fecResultado], [estado], [idAtencion], [idEmpleado]) VALUES (1, N'Asma Bronquial', N'Uso de inhalador', CAST(N'2016-07-03 08:40:00.000' AS DateTime), N'ACT', 1, 12)
INSERT [dbo].[T_RESULTADO_ATENCION] ([idResultado], [diagnostico], [tratamiento], [fecResultado], [estado], [idAtencion], [idEmpleado]) VALUES (2, N'Faringitis', N'Amoxicilina + acido Clavulanico', CAST(N'2016-08-03 08:40:00.000' AS DateTime), N'ACT', 2, 12)
INSERT [dbo].[T_RESULTADO_ATENCION] ([idResultado], [diagnostico], [tratamiento], [fecResultado], [estado], [idAtencion], [idEmpleado]) VALUES (3, N'Neumonia bronquila', N'Penicilina 1mill', CAST(N'2016-09-03 08:40:00.000' AS DateTime), N'ACT', 3, 12)
INSERT [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen], [fechaExamen], [fechaResultado], [diagnostico], [tipoExamen], [imagenResultado], [idResultado]) VALUES (1, CAST(N'2016-03-10 08:40:00.000' AS DateTime), CAST(N'2016-03-11 08:40:00.000' AS DateTime), N'PRESION ALTA/FIEBRE', N'SIGNOS VITALES', NULL, 3)
INSERT [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen], [fechaExamen], [fechaResultado], [diagnostico], [tipoExamen], [imagenResultado], [idResultado]) VALUES (2, CAST(N'2016-03-12 08:40:00.000' AS DateTime), CAST(N'2016-03-13 08:40:00.000' AS DateTime), N'PRESION ALTA/FIEBRE', N'SIGNOS VITALES', NULL, 3)
INSERT [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen], [fechaExamen], [fechaResultado], [diagnostico], [tipoExamen], [imagenResultado], [idResultado]) VALUES (3, CAST(N'2016-03-14 08:40:00.000' AS DateTime), CAST(N'2016-03-15 08:40:00.000' AS DateTime), N'PRESION ALTA/FIEBRE', N'SIGNOS VITALES', NULL, 3)
INSERT [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen], [fechaExamen], [fechaResultado], [diagnostico], [tipoExamen], [imagenResultado], [idResultado]) VALUES (4, CAST(N'2016-03-14 09:50:00.000' AS DateTime), CAST(N'2016-03-14 13:20:00.000' AS DateTime), N'Se muestra pequeño bulto circular en la rodilla derecha, de 1 cm de diámetro. Se observa sustancia líquida interna', N'RX', NULL, 1)
SET IDENTITY_INSERT [dbo].[T_ROL] ON 

INSERT [dbo].[T_ROL] ([idRol], [nombreRol], [estRol]) VALUES (1, N'Administrador de Sistema', N'ACT')
INSERT [dbo].[T_ROL] ([idRol], [nombreRol], [estRol]) VALUES (2, N'Solicitante', N'ACT')
INSERT [dbo].[T_ROL] ([idRol], [nombreRol], [estRol]) VALUES (3, N'Auxiliar de Mantenimiento', N'ACT')
INSERT [dbo].[T_ROL] ([idRol], [nombreRol], [estRol]) VALUES (4, N'Jefe de Mantenimiento', N'ACT')
INSERT [dbo].[T_ROL] ([idRol], [nombreRol], [estRol]) VALUES (5, N'Médico', N'ACT')
INSERT [dbo].[T_ROL] ([idRol], [nombreRol], [estRol]) VALUES (6, N'Técnico de Mantenimiento Interno', N'ACT')
INSERT [dbo].[T_ROL] ([idRol], [nombreRol], [estRol]) VALUES (7, N'Servicio de Mantenimiento Externo', N'ACT')
SET IDENTITY_INSERT [dbo].[T_ROL] OFF
INSERT [dbo].[T_SERVICIO_SALUD] ([idServicio], [tipoServicio], [nomServicio], [idEspecialidad]) VALUES (1, N'Cardiología', N'Colocación de Stent Intracoronario', 4)
INSERT [dbo].[T_SERVICIO_SALUD] ([idServicio], [tipoServicio], [nomServicio], [idEspecialidad]) VALUES (2, N'Cardiología', N'Colocación de marcapasos', 4)
INSERT [dbo].[T_SERVICIO_SALUD] ([idServicio], [tipoServicio], [nomServicio], [idEspecialidad]) VALUES (3, N'Medicina Interna', N'Diagnostico de Osteoporosis', 25)
INSERT [dbo].[T_SERVICIO_SALUD] ([idServicio], [tipoServicio], [nomServicio], [idEspecialidad]) VALUES (4, N'Medicina Interna', N'Densitometria osea', 25)
INSERT [dbo].[T_SERVICIO_SALUD] ([idServicio], [tipoServicio], [nomServicio], [idEspecialidad]) VALUES (5, N'Neumología', N'Espirometría', 33)
INSERT [dbo].[T_SERVICIO_SALUD] ([idServicio], [tipoServicio], [nomServicio], [idEspecialidad]) VALUES (6, N'Neumología', N'Fibrobroncoscopía', 33)
INSERT [dbo].[T_SERVICIO_SALUD] ([idServicio], [tipoServicio], [nomServicio], [idEspecialidad]) VALUES (7, N'Neumología', N'Consulta Medica', 33)
INSERT [dbo].[T_SOLICITUD_UCI] ([idSolicitud], [fechaSolicitud], [observacion], [estadoSolicitud], [gravedadPaciente], [idPaciente], [numeroSolicitud], [fechaEvaluacion], [tipoTraslado], [dscMedicinaTraslado], [tipoEquipoMedico], [idEmpleado], [idResultado], [idRegistro]) VALUES (3, CAST(N'2016-03-16 08:40:00.000' AS DateTime), N'PACIENTE CON SIGNOS VITALES CRITICOS', N'APR', N'DISFUNCIÒN ORGÀNICA COMPLETA', 1, N'SUCI0000001', CAST(N'2017-04-02 22:51:49.887' AS DateTime), N'CAMILLA RIGIDA (CAMILLA NORMAL)', N'SUERO FISIOLÒGICO MANTENIMIENTO', N'VENTILADOR DE TRANSPORTE', 12, 1, NULL)
INSERT [dbo].[T_SOLICITUD_UCI] ([idSolicitud], [fechaSolicitud], [observacion], [estadoSolicitud], [gravedadPaciente], [idPaciente], [numeroSolicitud], [fechaEvaluacion], [tipoTraslado], [dscMedicinaTraslado], [tipoEquipoMedico], [idEmpleado], [idResultado], [idRegistro]) VALUES (4, CAST(N'2016-03-16 08:40:00.000' AS DateTime), N'PACIENTE CON INSUFICIENCIA RENAL', N'PEN', N'DISFUNCIÒN ORGÀNICA AGUDA', 2, N'SUCI0000002', NULL, NULL, NULL, NULL, 12, 2, NULL)
INSERT [dbo].[T_SOLICITUD_UCI] ([idSolicitud], [fechaSolicitud], [observacion], [estadoSolicitud], [gravedadPaciente], [idPaciente], [numeroSolicitud], [fechaEvaluacion], [tipoTraslado], [dscMedicinaTraslado], [tipoEquipoMedico], [idEmpleado], [idResultado], [idRegistro]) VALUES (5, CAST(N'2016-03-16 08:40:00.000' AS DateTime), N'PACIENTE EN ESTADO DE COMA', N'PEN', N'DISFUNCIÒN ORGÀNICA AGUDA', 3, N'SUCI0000003', NULL, NULL, NULL, NULL, 12, 3, NULL)
SET IDENTITY_INSERT [dbo].[T_TRATAMIENTO_UCI] ON 

INSERT [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento], [fechaTratamiento], [resultado], [observacion], [medicinaTratamiento], [frecuencia], [idSolicitud]) VALUES (1, CAST(N'2017-04-02 16:44:24.023' AS DateTime), NULL, N'jhh', NULL, NULL, NULL)
INSERT [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento], [fechaTratamiento], [resultado], [observacion], [medicinaTratamiento], [frecuencia], [idSolicitud]) VALUES (2, CAST(N'2017-04-02 16:47:00.730' AS DateTime), NULL, N'xsxs', NULL, NULL, NULL)
INSERT [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento], [fechaTratamiento], [resultado], [observacion], [medicinaTratamiento], [frecuencia], [idSolicitud]) VALUES (3, CAST(N'2017-04-02 16:47:05.807' AS DateTime), NULL, N'xsxs', NULL, NULL, NULL)
INSERT [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento], [fechaTratamiento], [resultado], [observacion], [medicinaTratamiento], [frecuencia], [idSolicitud]) VALUES (4, CAST(N'2017-04-02 16:47:49.623' AS DateTime), NULL, N'xsxs', NULL, NULL, NULL)
INSERT [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento], [fechaTratamiento], [resultado], [observacion], [medicinaTratamiento], [frecuencia], [idSolicitud]) VALUES (5, CAST(N'2017-04-02 16:55:52.367' AS DateTime), NULL, N'', NULL, NULL, NULL)
INSERT [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento], [fechaTratamiento], [resultado], [observacion], [medicinaTratamiento], [frecuencia], [idSolicitud]) VALUES (6, CAST(N'2017-04-02 16:57:37.643' AS DateTime), NULL, N'', NULL, NULL, NULL)
INSERT [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento], [fechaTratamiento], [resultado], [observacion], [medicinaTratamiento], [frecuencia], [idSolicitud]) VALUES (7, CAST(N'2017-04-02 22:51:49.987' AS DateTime), NULL, N'', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[T_TRATAMIENTO_UCI] OFF
SET IDENTITY_INSERT [dbo].[T_USUARIO] ON 

INSERT [dbo].[T_USUARIO] ([idUsuario], [nombreUsuario], [email], [contrasena], [idEmpleado], [EstUsuario]) VALUES (1, N'CALDANAMONT', N'cesaraldanam@gmail.com', N'123', 1, N'ACT')
INSERT [dbo].[T_USUARIO] ([idUsuario], [nombreUsuario], [email], [contrasena], [idEmpleado], [EstUsuario]) VALUES (2, N'KAYLAS', N'katy1234@gmail.com', N'123456', 3, N'ACT')
INSERT [dbo].[T_USUARIO] ([idUsuario], [nombreUsuario], [email], [contrasena], [idEmpleado], [EstUsuario]) VALUES (3, N'ANGEJIMENEZ', N'angelijimenez321@gmail.com', N'123456', 8, N'ACT')
INSERT [dbo].[T_USUARIO] ([idUsuario], [nombreUsuario], [email], [contrasena], [idEmpleado], [EstUsuario]) VALUES (4, N'PAMEHERNANDEZ', N'pameladiaz123@gmail.com', N'222', 9, N'ACT')
INSERT [dbo].[T_USUARIO] ([idUsuario], [nombreUsuario], [email], [contrasena], [idEmpleado], [EstUsuario]) VALUES (5, N'ROSAMORALES', N'rosamorales@gmail.com', N'111', 10, N'ACT')
INSERT [dbo].[T_USUARIO] ([idUsuario], [nombreUsuario], [email], [contrasena], [idEmpleado], [EstUsuario]) VALUES (6, N'DANIELMEDINA', N'danielMedina@gmail.com', N'333', 11, N'ACT')
INSERT [dbo].[T_USUARIO] ([idUsuario], [nombreUsuario], [email], [contrasena], [idEmpleado], [EstUsuario]) VALUES (7, N'210147852645', N'juanitaSACMANT@gmail.com', N'123', 1, N'ACT')
SET IDENTITY_INSERT [dbo].[T_USUARIO] OFF
INSERT [dbo].[T_USUARIO_ROL] ([idUsuario], [idRol]) VALUES (1, 4)
INSERT [dbo].[T_USUARIO_ROL] ([idUsuario], [idRol]) VALUES (2, 6)
INSERT [dbo].[T_USUARIO_ROL] ([idUsuario], [idRol]) VALUES (3, 5)
INSERT [dbo].[T_USUARIO_ROL] ([idUsuario], [idRol]) VALUES (4, 5)
INSERT [dbo].[T_USUARIO_ROL] ([idUsuario], [idRol]) VALUES (5, 3)
INSERT [dbo].[T_USUARIO_ROL] ([idUsuario], [idRol]) VALUES (6, 3)
INSERT [dbo].[T_USUARIO_ROL] ([idUsuario], [idRol]) VALUES (7, 7)
/****** Object:  Index [UHC_idPaciente]    Script Date: 2/04/2017 11:38:21 p. m. ******/
ALTER TABLE [dbo].[T_HISTORIA_CLINICA] ADD  CONSTRAINT [UHC_idPaciente] UNIQUE NONCLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UHC_nroHistoriaClinica]    Script Date: 2/04/2017 11:38:21 p. m. ******/
ALTER TABLE [dbo].[T_HISTORIA_CLINICA] ADD  CONSTRAINT [UHC_nroHistoriaClinica] UNIQUE NONCLUSTERED 
(
	[nroHistoriaClinica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_ANTECEDENTES]  WITH CHECK ADD  CONSTRAINT [R_93] FOREIGN KEY([idHistoriaClinica])
REFERENCES [dbo].[T_HISTORIA_CLINICA] ([idHistoriaClinica])
GO
ALTER TABLE [dbo].[T_ANTECEDENTES] CHECK CONSTRAINT [R_93]
GO
ALTER TABLE [dbo].[T_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [R_11] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad])
GO
ALTER TABLE [dbo].[T_EMPLEADO] CHECK CONSTRAINT [R_11]
GO
ALTER TABLE [dbo].[T_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [R_12] FOREIGN KEY([codPersona])
REFERENCES [dbo].[T_PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[T_EMPLEADO] CHECK CONSTRAINT [R_12]
GO
ALTER TABLE [dbo].[T_EVALUACION_SIGNOS_VITALES]  WITH CHECK ADD  CONSTRAINT [R_77] FOREIGN KEY([idResultadoExamen])
REFERENCES [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen])
GO
ALTER TABLE [dbo].[T_EVALUACION_SIGNOS_VITALES] CHECK CONSTRAINT [R_77]
GO
ALTER TABLE [dbo].[T_EVALUACION_TISS]  WITH CHECK ADD  CONSTRAINT [R_78] FOREIGN KEY([idResultadoExamen])
REFERENCES [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen])
GO
ALTER TABLE [dbo].[T_EVALUACION_TISS] CHECK CONSTRAINT [R_78]
GO
ALTER TABLE [dbo].[T_EVENTO_HISTORIA_CLINICA]  WITH CHECK ADD  CONSTRAINT [R_48] FOREIGN KEY([idResultado])
REFERENCES [dbo].[T_RESULTADO_ATENCION] ([idResultado])
GO
ALTER TABLE [dbo].[T_EVENTO_HISTORIA_CLINICA] CHECK CONSTRAINT [R_48]
GO
ALTER TABLE [dbo].[T_EVENTO_HISTORIA_CLINICA]  WITH CHECK ADD  CONSTRAINT [R_76] FOREIGN KEY([idResultadoExamen])
REFERENCES [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen])
GO
ALTER TABLE [dbo].[T_EVENTO_HISTORIA_CLINICA] CHECK CONSTRAINT [R_76]
GO
ALTER TABLE [dbo].[T_EVENTO_HISTORIA_CLINICA]  WITH CHECK ADD  CONSTRAINT [R_90] FOREIGN KEY([idHistoriaClinica])
REFERENCES [dbo].[T_HISTORIA_CLINICA] ([idHistoriaClinica])
GO
ALTER TABLE [dbo].[T_EVENTO_HISTORIA_CLINICA] CHECK CONSTRAINT [R_90]
GO
ALTER TABLE [dbo].[T_EXAMEN_TRATAMIENTO]  WITH CHECK ADD  CONSTRAINT [R_87] FOREIGN KEY([idTratamiento])
REFERENCES [dbo].[T_TRATAMIENTO_UCI] ([idTratamiento])
GO
ALTER TABLE [dbo].[T_EXAMEN_TRATAMIENTO] CHECK CONSTRAINT [R_87]
GO
ALTER TABLE [dbo].[T_EXAMEN_TRATAMIENTO]  WITH CHECK ADD  CONSTRAINT [R_88] FOREIGN KEY([idResultadoExamen])
REFERENCES [dbo].[T_RESULTADO_EXAMEN] ([idResultadoExamen])
GO
ALTER TABLE [dbo].[T_EXAMEN_TRATAMIENTO] CHECK CONSTRAINT [R_88]
GO
ALTER TABLE [dbo].[T_HISTORIA_CLINICA]  WITH CHECK ADD  CONSTRAINT [R_80] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[T_PACIENTE] ([idPaciente])
GO
ALTER TABLE [dbo].[T_HISTORIA_CLINICA] CHECK CONSTRAINT [R_80]
GO
ALTER TABLE [dbo].[T_MUEBLE]  WITH CHECK ADD  CONSTRAINT [R_14] FOREIGN KEY([codModelo])
REFERENCES [dbo].[T_MODELO] ([codModelo])
GO
ALTER TABLE [dbo].[T_MUEBLE] CHECK CONSTRAINT [R_14]
GO
ALTER TABLE [dbo].[T_MUEBLE]  WITH CHECK ADD  CONSTRAINT [R_15] FOREIGN KEY([codBien])
REFERENCES [dbo].[T_BIEN] ([codBien])
GO
ALTER TABLE [dbo].[T_MUEBLE] CHECK CONSTRAINT [R_15]
GO
ALTER TABLE [dbo].[T_MUEBLE]  WITH CHECK ADD  CONSTRAINT [R_16] FOREIGN KEY([codEmpresa])
REFERENCES [dbo].[T_EMPRESA] ([codEmpresa])
GO
ALTER TABLE [dbo].[T_MUEBLE] CHECK CONSTRAINT [R_16]
GO
ALTER TABLE [dbo].[T_ORDEN_ATENCION]  WITH CHECK ADD  CONSTRAINT [R_45] FOREIGN KEY([idReserva])
REFERENCES [dbo].[T_RESERVA_SERVICIO] ([idReserva])
GO
ALTER TABLE [dbo].[T_ORDEN_ATENCION] CHECK CONSTRAINT [R_45]
GO
ALTER TABLE [dbo].[T_PACIENTE]  WITH CHECK ADD  CONSTRAINT [R_82] FOREIGN KEY([codPersona])
REFERENCES [dbo].[T_PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[T_PACIENTE] CHECK CONSTRAINT [R_82]
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO]  WITH CHECK ADD  CONSTRAINT [R_40] FOREIGN KEY([idServicio])
REFERENCES [dbo].[T_SERVICIO_SALUD] ([idServicio])
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO] CHECK CONSTRAINT [R_40]
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO]  WITH CHECK ADD  CONSTRAINT [R_42] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO] CHECK CONSTRAINT [R_42]
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO]  WITH CHECK ADD  CONSTRAINT [R_91] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[T_PACIENTE] ([idPaciente])
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO] CHECK CONSTRAINT [R_91]
GO
ALTER TABLE [dbo].[T_RESULTADO_ATENCION]  WITH CHECK ADD  CONSTRAINT [R_41] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_RESULTADO_ATENCION] CHECK CONSTRAINT [R_41]
GO
ALTER TABLE [dbo].[T_RESULTADO_ATENCION]  WITH CHECK ADD  CONSTRAINT [R_46] FOREIGN KEY([idAtencion])
REFERENCES [dbo].[T_ORDEN_ATENCION] ([idAtencion])
GO
ALTER TABLE [dbo].[T_RESULTADO_ATENCION] CHECK CONSTRAINT [R_46]
GO
ALTER TABLE [dbo].[T_RESULTADO_EXAMEN]  WITH CHECK ADD  CONSTRAINT [R_89] FOREIGN KEY([idResultado])
REFERENCES [dbo].[T_RESULTADO_ATENCION] ([idResultado])
GO
ALTER TABLE [dbo].[T_RESULTADO_EXAMEN] CHECK CONSTRAINT [R_89]
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI]  WITH CHECK ADD  CONSTRAINT [R_81] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[T_PACIENTE] ([idPaciente])
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI] CHECK CONSTRAINT [R_81]
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI]  WITH CHECK ADD  CONSTRAINT [R_83] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI] CHECK CONSTRAINT [R_83]
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI]  WITH CHECK ADD  CONSTRAINT [R_84] FOREIGN KEY([idResultado])
REFERENCES [dbo].[T_RESULTADO_ATENCION] ([idResultado])
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI] CHECK CONSTRAINT [R_84]
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI]  WITH CHECK ADD  CONSTRAINT [R_85] FOREIGN KEY([idRegistro])
REFERENCES [dbo].[T_REGISTRO_UCI] ([idRegistro])
GO
ALTER TABLE [dbo].[T_SOLICITUD_UCI] CHECK CONSTRAINT [R_85]
GO
ALTER TABLE [dbo].[T_TRATAMIENTO_UCI]  WITH CHECK ADD  CONSTRAINT [R_86] FOREIGN KEY([idSolicitud])
REFERENCES [dbo].[T_SOLICITUD_UCI] ([idSolicitud])
GO
ALTER TABLE [dbo].[T_TRATAMIENTO_UCI] CHECK CONSTRAINT [R_86]
GO
ALTER TABLE [dbo].[T_USUARIO]  WITH CHECK ADD FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_USUARIO_ROL]  WITH CHECK ADD  CONSTRAINT [FK__T_USUARIO__idRol__440B1D61] FOREIGN KEY([idRol])
REFERENCES [dbo].[T_ROL] ([idRol])
GO
ALTER TABLE [dbo].[T_USUARIO_ROL] CHECK CONSTRAINT [FK__T_USUARIO__idRol__440B1D61]
GO
ALTER TABLE [dbo].[T_USUARIO_ROL]  WITH CHECK ADD  CONSTRAINT [FK__T_USUARIO__idUsu__4316F928] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[T_USUARIO] ([idUsuario])
GO
ALTER TABLE [dbo].[T_USUARIO_ROL] CHECK CONSTRAINT [FK__T_USUARIO__idUsu__4316F928]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarSolicitudUCI]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ActualizarSolicitudUCI]
(
@idSolicitud int, 
@fechaSolicitud datetime, 
@observacion varchar(50), 
@estadoSolicitud char(3), 
@gravedadPaciente varchar(30), 
@idPaciente int, 
@numeroSolicitud varchar(20), 
@fechaEvaluacion datetime, 
@tipoTraslado varchar(50), 
@dscMedicinaTraslado varchar(100), 
@tipoEquipoMedico varchar(100), 
@idEmpleado int, 
@idResultado int, 
@idRegistro int
)
as
begin
	update T_SOLICITUD_UCI set fechaSolicitud=@fechaSolicitud,
	observacion=@observacion,
	estadoSolicitud = @estadoSolicitud,
	gravedadPaciente = @gravedadPaciente,
	idPaciente = @idPaciente,
	numeroSolicitud=@numeroSolicitud,
	fechaEvaluacion=@fechaEvaluacion,
	tipoTraslado=@tipoTraslado,
	dscMedicinaTraslado = @dscMedicinaTraslado,
	tipoEquipoMedico=@tipoEquipoMedico,
	idEmpleado=@idEmpleado,
	idResultado=@idResultado,
	idRegistro=@idRegistro
	where idSolicitud = @idSolicitud
end
GO
/****** Object:  StoredProcedure [dbo].[InsertarTratamientoUCI]    Script Date: 2/04/2017 11:38:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertarTratamientoUCI]
(
@fechaTratamiento datetime, 
@resultado varchar(200), 
@observacion varchar(200), 
@medicinaTratamiento varchar(200), 
@frecuencia varchar(15), 
@idSolicitud int
)
as
begin
	insert into [dbo].[T_TRATAMIENTO_UCI] values(@fechaTratamiento,@resultado,@observacion,@medicinaTratamiento,@frecuencia,@idSolicitud)
end
GO
