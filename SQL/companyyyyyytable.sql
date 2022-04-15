/****** Object:  Table [dbo].[City]    Script Date: 23/03/2022 2:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](20) NULL,
	[state] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 23/03/2022 2:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[company_id] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [nvarchar](20) NULL,
	[company_doe] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[employee_2]    Script Date: 23/03/2022 2:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_2](
	[employee_2_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_2_name] [nvarchar](20) NULL,
	[employee_2_dob] [date] NULL,
	[employee_2_salary] [int] NULL,
	[employee_2_doj] [date] NULL,
	[employee_2_company] [int] NULL,
	[employee_2_city] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 23/03/2022 2:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[City] ON 

GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (1, N'Ahmedabad', 1)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (2, N'Gandhinagar', 1)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (3, N'Jaipur', 2)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (4, N'Udaipur', 2)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (5, N'nagpur', 4)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (6, N'nagpur', NULL)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (7, N'asam', 5)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (8, N'punjab', 6)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (9, N'jaipue', 1)
GO
INSERT [dbo].[City] ([city_id], [city_name], [state]) VALUES (10, N'vadali', 1)
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (1, N'TechMicra', CAST(N'2017-06-23' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (2, N'ICTinfracon', CAST(N'2014-12-04' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (3, N'cCubeInfotech', CAST(N'2017-08-01' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (4, N'Vision', CAST(N'2018-02-14' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (5, N'oracle', CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (6, N'oracle', CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (7, N'infocity', CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (8, N'SamifLab', CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (9, N'dell', CAST(N'2018-05-03' AS Date))
GO
INSERT [dbo].[Company] ([company_id], [company_name], [company_doe]) VALUES (10, N'lenovo', CAST(N'2018-05-03' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[employee_2] ON 

GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (11, N'ami', CAST(N'1992-09-14' AS Date), 45000, CAST(N'2018-05-02' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (54, N'ami', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 9, 10)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (29, N'ami', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (30, N'ami', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (39, N'ami10', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (31, N'ami2', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (32, N'ami3', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (33, N'ami4', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (34, N'ami5', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (35, N'ami6', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (36, N'ami7', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (37, N'ami8', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (38, N'ami9', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (55, N'aminesh', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 10, 10)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (1, N'Aminesh', CAST(N'1995-06-23' AS Date), 8000, CAST(N'2018-05-02' AS Date), 1, 1)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (40, N'amita', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (41, N'amita', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (42, N'amita', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (43, N'amita', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (5, N'Anilkumar', CAST(N'1967-05-09' AS Date), 44000, CAST(N'2018-05-02' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (9, N'danny', CAST(N'2005-03-20' AS Date), 42000, CAST(N'2018-05-02' AS Date), 2, 2)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (49, N'deep', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 8, 8)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (50, N'deepika', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 8, 8)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (44, N'dip', CAST(N'2007-07-11' AS Date), 12345, CAST(N'2018-05-03' AS Date), 5, 5)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (45, N'dipak', CAST(N'2007-07-11' AS Date), 12345, CAST(N'2018-05-03' AS Date), 6, 6)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (46, N'dipak', CAST(N'2007-07-11' AS Date), 12345, CAST(N'2018-05-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (47, N'dipak', CAST(N'2007-07-11' AS Date), 12345, CAST(N'2018-05-03' AS Date), 7, 7)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (48, N'dipak', CAST(N'2007-07-11' AS Date), 12345, CAST(N'2018-05-03' AS Date), 7, 7)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (52, N'dipesh', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 8, 9)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (53, N'dipu', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 8, 9)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (51, N'dipu', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 8, 6)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (13, N'dolly', CAST(N'1994-07-12' AS Date), 15500, CAST(N'2018-05-02' AS Date), 1, 1)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (6, N'hello', CAST(N'2015-04-03' AS Date), 15200, CAST(N'2018-05-02' AS Date), 1, 1)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (4, N'Jingu', CAST(N'2002-11-21' AS Date), 10000, CAST(N'2018-05-02' AS Date), 1, 1)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (7, N'jon', CAST(N'2011-12-12' AS Date), 13200, CAST(N'2018-05-02' AS Date), 2, 2)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (12, N'jonny', CAST(N'1993-08-13' AS Date), 33500, CAST(N'2018-05-02' AS Date), 2, 2)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (21, N'krunal', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-02' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (22, N'krunal', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (27, N'krunal', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (28, N'krunal', CAST(N'1977-10-05' AS Date), 8000, CAST(N'2018-05-03' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (20, N'kuldip', CAST(N'1989-01-06' AS Date), 39050, CAST(N'2018-05-02' AS Date), 1, 1)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (3, N'Kumud', CAST(N'1990-04-07' AS Date), 22500, CAST(N'2018-05-02' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (10, N'kusum', CAST(N'1991-10-15' AS Date), 43000, CAST(N'2018-05-02' AS Date), 1, 1)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (16, N'pallav', CAST(N'1997-05-10' AS Date), 195000, CAST(N'2018-05-02' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (19, N'parth', CAST(N'2000-02-07' AS Date), 21050, CAST(N'2018-05-02' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (18, N'pooja', CAST(N'1999-03-08' AS Date), 18550, CAST(N'2018-05-02' AS Date), 2, 2)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (17, N'sachin', CAST(N'1998-04-09' AS Date), 17550, CAST(N'2018-05-02' AS Date), 1, 1)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (8, N'sam', CAST(N'1990-01-22' AS Date), 32000, CAST(N'2018-05-02' AS Date), 3, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (56, N'saras', CAST(N'1975-02-19' AS Date), 40525, CAST(N'2018-05-03' AS Date), 10, 3)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (2, N'Saras', CAST(N'1987-08-15' AS Date), 15000, CAST(N'2018-05-02' AS Date), 2, 2)
GO
INSERT [dbo].[employee_2] ([employee_2_id], [employee_2_name], [employee_2_dob], [employee_2_salary], [employee_2_doj], [employee_2_company], [employee_2_city]) VALUES (15, N'tushar', CAST(N'1996-06-11' AS Date), 11000, CAST(N'2018-05-02' AS Date), 2, 2)
GO
SET IDENTITY_INSERT [dbo].[employee_2] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 

GO
INSERT [dbo].[State] ([state_id], [state_name]) VALUES (1, N'Gujarat')
GO
INSERT [dbo].[State] ([state_id], [state_name]) VALUES (2, N'Rajasthan')
GO
INSERT [dbo].[State] ([state_id], [state_name]) VALUES (3, N'Bombay')
GO
INSERT [dbo].[State] ([state_id], [state_name]) VALUES (4, N'maharashtr')
GO
INSERT [dbo].[State] ([state_id], [state_name]) VALUES (5, N'guvahati')
GO
INSERT [dbo].[State] ([state_id], [state_name]) VALUES (6, N'ludhiana')
GO
INSERT [dbo].[State] ([state_id], [state_name]) VALUES (1004, NULL)
GO
SET IDENTITY_INSERT [dbo].[State] OFF
GO
/****** Object:  Index [PK_employee_2]    Script Date: 23/03/2022 2:27:58 PM ******/
ALTER TABLE [dbo].[employee_2] ADD  CONSTRAINT [PK_employee_2] PRIMARY KEY NONCLUSTERED 
(
	[employee_2_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee_2] ADD  CONSTRAINT [df_doj_employee_2]  DEFAULT (CONVERT([nvarchar](12),getdate())) FOR [employee_2_doj]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([state])
REFERENCES [dbo].[State] ([state_id])
GO
ALTER TABLE [dbo].[employee_2]  WITH CHECK ADD FOREIGN KEY([employee_2_company])
REFERENCES [dbo].[Company] ([company_id])
GO
ALTER TABLE [dbo].[employee_2]  WITH CHECK ADD FOREIGN KEY([employee_2_city])
REFERENCES [dbo].[City] ([city_id])
GO
ALTER TABLE [dbo].[employee_2]  WITH CHECK ADD  CONSTRAINT [chk_salary_employee_2] CHECK  (([employee_2_salary]>(5000)))
GO
ALTER TABLE [dbo].[employee_2] CHECK CONSTRAINT [chk_salary_employee_2]
GO

select * from employee as e
join company as cmp
on 
join City as ct
on
join State as st
on

