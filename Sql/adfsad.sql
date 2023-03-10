USE [studyASPNET]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2023-01-13 오후 2:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2023-01-13 오후 2:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DisplayOrder] [nvarchar](20) NULL,
	[PostDate] [datetime] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 2023-01-13 오후 2:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ReadCount] [int] NOT NULL,
	[PostDate] [datetime2](7) NOT NULL,
	[Contents] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 2023-01-13 오후 2:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Division] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](500) NULL,
	[FileName] [nvarchar](500) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (1, N'애플', N'1', CAST(N'2023-01-06T15:18:20.000' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (2, N'삼성전자', N'2', CAST(N'2023-01-06T15:19:30.000' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (3, N'LG전자', N'3', CAST(N'2023-01-06T15:19:50.000' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (4, N'테슬라', N'4', CAST(N'2023-01-06T15:20:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Notes] ON 

INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (1, N'123', N'이름', N'첫번째 게시글입니다', 10, CAST(N'2023-01-06T17:42:00.0000000' AS DateTime2), N'게시글 내용입니다. 블라블라')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (2, N'1234', N'이름2', N'두번째 게시글 입니다', 1, CAST(N'2023-01-07T00:00:00.0000000' AS DateTime2), N'게시글 내용두번쨰')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (3, N'Ashely', N'애슐리', N'이제 DB로 내용을 넣습니다.', 12, CAST(N'2023-01-09T00:35:00.0000000' AS DateTime2), N'게시글 내용부분입니다. DB에 들어갑니다.')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (6, N'Ashely', N'애슐리', N'8번째글 이번엔 안지움', 0, CAST(N'2023-01-10T09:43:08.6634417' AS DateTime2), N'<p>안지울꺼에요</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (7, N'Ashely', N'애슐리', N'9번째 메시지용', 1, CAST(N'2023-01-10T10:08:19.3079398' AS DateTime2), N'<p>9번째 메시지 ㄱㄱ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (10, N'hugo74', N'성지한', N'일곱번째 글입니다.', 1, CAST(N'2023-01-10T10:36:52.2638584' AS DateTime2), N'<p>블라블라블라</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (11, N'비비비', N'씨씨씨', N'디디디', 1, CAST(N'2023-01-10T10:37:29.7781248' AS DateTime2), N'<p>디디디디</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (12, N'asdfasdf', N'asd', N'asdfasdf', 1, CAST(N'2023-01-10T10:37:47.0554686' AS DateTime2), N'<p>asdfzxcv</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (13, N'리스트', N'123', N'123124', 4, CAST(N'2023-01-10T10:40:13.8648524' AS DateTime2), N'<p>12341234</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (14, N'리스트123123', N'1231231', N'123123', 4, CAST(N'2023-01-10T10:40:23.6692065' AS DateTime2), N'<p>123123213</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (15, N'ㅈㄹㄷㄷㅈ', N'ㅈㄷㄹㄷㅈㄹ', N'ㅈㄷㄹㄷㅈㄹ', 12, CAST(N'2023-01-10T12:05:34.5047861' AS DateTime2), N'<p>ㄷㅈㄹㄷㅈㄹ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (16, N'Ashely', N'Ashely', N'입력테스트', 0, CAST(N'2023-01-12T10:17:56.0903648' AS DateTime2), N'<p>123123</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (17, N'Ashely', N'123123', N'123123', 1, CAST(N'2023-01-12T10:19:08.1364442' AS DateTime2), N'<p>내용추가</p><p><br></p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (18, N'ashely', N'ashely', N'ㅁㄴㅇㄴ', 2, CAST(N'2023-01-12T10:30:19.1081119' AS DateTime2), N'<p>ㅇㅁㄴㅇㄴㅁㅇ</p>')
SET IDENTITY_INSERT [dbo].[Notes] OFF
GO
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (7, N'Top', N'Hugo''s PortfolioWeb', N'<p>안녕하세요!</p><p>저는 ASPNET Core 웹개발을 듣고있는 사람입니다.</p><p>저의 포트폴리오 사이트에 오신걸 환영합니다.</p><p><br></p>', N'https://github.com/youngsu-Jang/studyASPNET', N'1f662b52-f3f2-4c56-8114-8474b384feb8_Cat_August_2010-4.jpg')
INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (8, N'Card1', N'First Skill', N'<p>저는 C#을 학습했고, 간단한 웹사이트, 윈폼앱을 개발할 수 있습니다.</p>', N'https://github.com/youngsu-Jang/studyASPNET', N'84bc119d-15a3-48c2-a3f4-b0054ba88c5f_KakaoTalk_20230113_103537656.png')
INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (10, N'Card2', N'asdascsacsa', N'<p>vaewfgewa</p>', N'https://github.com/youngsu-Jang/studyASPNET', N'8f0ef5df-9dad-4a9c-9827-ffd98d964c72_KakaoTalk_20230112_142826086.png')
INSERT [dbo].[Profiles] ([id], [Division], [Title], [Description], [Url], [FileName]) VALUES (11, N'Card3', N'Last Skill', N'<p>ASPNET Core</p><p>.NET Core로 된 ASP.NET Core MVC 웹사이트를 개발할 수 있습니다.</p>', N'https://github.com/youngsu-Jang/studyASPNET', N'3e22cf41-c46c-4f2c-a297-08fce6aebeff_KakaoTalk_20230113_103725746.png')
SET IDENTITY_INSERT [dbo].[Profiles] OFF
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[USP_PagingNotes]    Script Date: 2023-01-13 오후 2:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		SMG
-- Create date: 2023.01.10
-- Description:	게시판 페이징 용 SP
-- =============================================
CREATE   PROCEDURE [dbo].[USP_PagingNotes]
	@StartCount Int, -- 페이징 시작카운트
	@EndCount Int -- 페이징 종료카운트

AS
BEGIN

	SET NOCOUNT ON;

    -- 페이징용 쿼리 시작
		SELECT *
	  FROM (
			 SELECT ROW_NUMBER() OVER (ORDER BY Id DESC) AS rowNum
		  ,Id
		  ,UserId
		  ,[Name]
		  ,Title
		  ,ReadCount
		  ,PostDate
		  ,Contents
		   FROM Notes
		   ) AS Base
	 WHERE Base.rowNum BETWEEN @StartCount AND @EndCount
END
GO
