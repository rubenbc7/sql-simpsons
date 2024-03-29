USE [db_simpsons]
GO
/****** Object:  User [simpsons]    Script Date: 15/10/2019 08:34:15 p. m. ******/
CREATE USER [simpsons] FOR LOGIN [simpsons] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [simpsons]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 15/10/2019 08:34:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[secondName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[age] [int] NULL,
	[descp] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (1, N'Homero', N'Jay', N'Simpson', 34, N'Personaje de color amarillo borracho y gordo')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (9, N'Bartolomeo', N'Jay', N'Simpson', 10, N'Personaje de color amarillo con pelos de punta')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (10, N'Margory', N'', N'Simpson', 34, N'Cabello de color azul bastante alto')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (11, N'Lisa', N'', N'Simpson', 8, N'Toca el saxofón y tiene el pelo de estrealla')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
