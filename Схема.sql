USE [master]
GO
/****** Object:  Database [user30]    Script Date: 29.09.2023 14:37:57 ******/
CREATE DATABASE [user30]
GO
USE [user30]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[EventsId] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Day] [tinyint] NOT NULL,
	[StartTime] [time](0) NOT NULL,
	[ModeratorId] [int] NOT NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdjucatorActivity]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdjucatorActivity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActivityId] [int] NOT NULL,
	[AdjudicatorId] [int] NOT NULL,
 CONSTRAINT [PK_AdjucatorActivity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adjudicator]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adjudicator](
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenderId] [int] NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[CountryId] [int] NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[DirectionId] [int] NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NULL,
 CONSTRAINT [PK_Adjudicator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Title] [nvarchar](100) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] NOT NULL,
	[RussianTitle] [nvarchar](100) NOT NULL,
	[EnglishTitle] [varchar](100) NOT NULL,
	[LetterCode] [varchar](2) NOT NULL,
	[Code] [smallint] NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direction]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direction](
	[Title] [nvarchar](150) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Direction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Event] [nvarchar](250) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[Day] [tinyint] NOT NULL,
	[CityId] [int] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventType]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventType](
	[EventTypeName] [nvarchar](150) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_EventType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender] [nvarchar](15) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[CountryId] [int] NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderator]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderator](
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenderId] [int] NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[CountryId] [int] NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[DirectionId] [int] NOT NULL,
	[EventTypeId] [int] NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NULL,
 CONSTRAINT [PK_Moderator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizer]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizer](
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[CountryId] [int] NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](150) NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_Organizer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Winners]    Script Date: 29.09.2023 14:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Winners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[EventsId] [int] NOT NULL,
 CONSTRAINT [PK_Winners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Events] FOREIGN KEY([EventsId])
REFERENCES [dbo].[Events] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Events]
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Moderator] FOREIGN KEY([ModeratorId])
REFERENCES [dbo].[Moderator] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Moderator]
GO
ALTER TABLE [dbo].[AdjucatorActivity]  WITH CHECK ADD  CONSTRAINT [FK_AdjucatorActivity_Activity] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activity] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdjucatorActivity] CHECK CONSTRAINT [FK_AdjucatorActivity_Activity]
GO
ALTER TABLE [dbo].[AdjucatorActivity]  WITH CHECK ADD  CONSTRAINT [FK_AdjucatorActivity_Adjudicator] FOREIGN KEY([AdjudicatorId])
REFERENCES [dbo].[Adjudicator] ([Id])
GO
ALTER TABLE [dbo].[AdjucatorActivity] CHECK CONSTRAINT [FK_AdjucatorActivity_Adjudicator]
GO
ALTER TABLE [dbo].[Adjudicator]  WITH CHECK ADD  CONSTRAINT [FK_Adjudicator_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Adjudicator] CHECK CONSTRAINT [FK_Adjudicator_Country]
GO
ALTER TABLE [dbo].[Adjudicator]  WITH CHECK ADD  CONSTRAINT [FK_Adjudicator_Direction] FOREIGN KEY([DirectionId])
REFERENCES [dbo].[Direction] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Adjudicator] CHECK CONSTRAINT [FK_Adjudicator_Direction]
GO
ALTER TABLE [dbo].[Adjudicator]  WITH CHECK ADD  CONSTRAINT [FK_Adjudicator_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Adjudicator] CHECK CONSTRAINT [FK_Adjudicator_Gender]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_City]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Country]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Gender]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Country]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Direction] FOREIGN KEY([DirectionId])
REFERENCES [dbo].[Direction] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Direction]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_EventType] FOREIGN KEY([EventTypeId])
REFERENCES [dbo].[EventType] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_EventType]
GO
ALTER TABLE [dbo].[Moderator]  WITH CHECK ADD  CONSTRAINT [FK_Moderator_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Moderator] CHECK CONSTRAINT [FK_Moderator_Gender]
GO
ALTER TABLE [dbo].[Organizer]  WITH CHECK ADD  CONSTRAINT [FK_Organizer_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Organizer] CHECK CONSTRAINT [FK_Organizer_Country]
GO
ALTER TABLE [dbo].[Organizer]  WITH CHECK ADD  CONSTRAINT [FK_Organizer_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Organizer] CHECK CONSTRAINT [FK_Organizer_Gender]
GO
ALTER TABLE [dbo].[Winners]  WITH CHECK ADD  CONSTRAINT [FK_Winners_Events] FOREIGN KEY([EventsId])
REFERENCES [dbo].[Events] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Winners] CHECK CONSTRAINT [FK_Winners_Events]
GO
ALTER TABLE [dbo].[Winners]  WITH CHECK ADD  CONSTRAINT [FK_Winners_Member] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Winners] CHECK CONSTRAINT [FK_Winners_Member]
GO
USE [master]
GO
ALTER DATABASE [user30] SET  READ_WRITE 
GO
