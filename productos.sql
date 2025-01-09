USE [Despensa]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/01/2025 3:28:44 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 8/01/2025 3:28:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[imagen] [nvarchar](max) NULL,
	[Precio] [int] NOT NULL,
	[Fecha] [datetime2](7) NOT NULL,
	[Estado] [nvarchar](max) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250108173909_inicial', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [imagen], [Precio], [Fecha], [Estado]) VALUES (2, N'Redbull', N'Energizante', N'https://dislicoresqa.vtexassets.com/arquivos/ids/257464-1200-auto?v=637892566927270000&width=1200&height=auto&aspect=true', 3, CAST(N'2003-06-23T00:00:00.0000000' AS DateTime2), N'Activo')
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [imagen], [Precio], [Fecha], [Estado]) VALUES (3, N'Monster', N'Energizante', N'https://www.google.com/imgres?q=monster&imgurl=https%3A%2F%2Fmercadomadrid.com.co%2F4205-superlarge_default_2x%2Fbebida-energetica-monster-green-lt473ml.jpg&imgrefurl=https%3A%2F%2Fmercadomadrid.com.co%2Fbebidas-energizantes%2F562-bebida-energetica-monster-green-lt473ml-https://mercadomadrid.com.co/4205-superlarge_default/bebida-energetica-monster-green-lt473ml.jpg', 5, CAST(N'2025-01-08T00:00:00.0000000' AS DateTime2), N'Inactivo')
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [imagen], [Precio], [Fecha], [Estado]) VALUES (4, N'Cocacola', N'Gaseosa', N'https://www.coca-cola.com/content/dam/onexp/co/es/brands/coca-cola/coca-cola-original/ccso_600ml_750x750.png/width1960.png', 10, CAST(N'2025-01-06T00:00:00.0000000' AS DateTime2), N'Activo')
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO