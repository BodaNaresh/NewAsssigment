USE [TODO]
GO
/****** Object:  Table [dbo].[Board_Todo_Mapping]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Board_Todo_Mapping](
	[BoardID] [int] NOT NULL,
	[TodoId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boards]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boards](
	[BoardID] [int] IDENTITY(1,1) NOT NULL,
	[BoardName] [varchar](100) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Board] PRIMARY KEY CLUSTERED 
(
	[BoardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginUser]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginUser](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_LoginUser] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NOT NULL,
	[Gender] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Location] [varchar](100) NULL,
 CONSTRAINT [PK_Register] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Todo]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Todo](
	[TodoId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Status] [varchar](100) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK__Todo__95862552325C706B] PRIMARY KEY CLUSTERED 
(
	[TodoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Board_Todo_Mapping] ([BoardID], [TodoId]) VALUES (1, 32)
GO
INSERT [dbo].[Board_Todo_Mapping] ([BoardID], [TodoId]) VALUES (2, 26)
GO
INSERT [dbo].[Board_Todo_Mapping] ([BoardID], [TodoId]) VALUES (3, 28)
GO
SET IDENTITY_INSERT [dbo].[Boards] ON 
GO
INSERT [dbo].[Boards] ([BoardID], [BoardName], [UserID]) VALUES (1, N'Board1', 11)
GO
INSERT [dbo].[Boards] ([BoardID], [BoardName], [UserID]) VALUES (2, N'Board2', 12)
GO
INSERT [dbo].[Boards] ([BoardID], [BoardName], [UserID]) VALUES (3, N'Board3', 13)
GO
INSERT [dbo].[Boards] ([BoardID], [BoardName], [UserID]) VALUES (4, N'Board5', NULL)
GO
SET IDENTITY_INSERT [dbo].[Boards] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginUser] ON 
GO
INSERT [dbo].[LoginUser] ([LoginID], [Email], [password], [UserID]) VALUES (2, N'a@gmail.com', N'321', NULL)
GO
INSERT [dbo].[LoginUser] ([LoginID], [Email], [password], [UserID]) VALUES (3, N'n@gmail.com', N'123', NULL)
GO
INSERT [dbo].[LoginUser] ([LoginID], [Email], [password], [UserID]) VALUES (4, N'na@gmail.com', N'456', NULL)
GO
INSERT [dbo].[LoginUser] ([LoginID], [Email], [password], [UserID]) VALUES (5, N'n@gmail.com', N'1234', NULL)
GO
INSERT [dbo].[LoginUser] ([LoginID], [Email], [password], [UserID]) VALUES (6, N'a@gmail.com', N'456', NULL)
GO
INSERT [dbo].[LoginUser] ([LoginID], [Email], [password], [UserID]) VALUES (7, N'naresh@gmail.com', N'123', NULL)
GO
INSERT [dbo].[LoginUser] ([LoginID], [Email], [password], [UserID]) VALUES (8, N'na@gmail.com', N'321', NULL)
GO
SET IDENTITY_INSERT [dbo].[LoginUser] OFF
GO
SET IDENTITY_INSERT [dbo].[Register] ON 
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (11, N'Naresh', N'n@gmail.com', N'Male', N'987654568', N'Hyderabad')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (12, N'Anu', N'v@gmail.com', N'Female', N'3456787654', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (13, N'Anu', N'a@gmail.com', N'Female', N'3456787654', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (14, N'Anu', N'a@gmail.com', N'Female', N'98765456', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (15, N'venkat', N'na@gmail.com', N'Male', N'3456789', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (16, N'ravi', N'r@gmail.com', N'Male', N'3456787654', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (17, N'Virat', N'na@gmail.com', N'Male', N'3456787654', N'Hyderabad')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (18, N'ravi', N'r@gmail.com', N'Male', N'3456789', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (19, N'Virat', N'n@gmail.com', N'Male', N'987654568', N'Hyderabad')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (20, N'Anu', N'r@gmail.com', N'Female', N'987654568', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (21, N'Naresh', N'na@gmail.com', N'Male', N'3456787654', N'Hyderabad')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (22, N'Anu', N'na@gmail.com', N'Male', N'3456789', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (23, N'Virat', N'n@gmail.com', N'Male', N'3456787654', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (24, N'venkat', N'a@gmail.com', N'Male', N'987654568', N'Hyderabad')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (25, N'Naresh', N'n@gmail.com', N'Male', N'987654568', N'Hyderabad')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (26, N'venkat', N'na@gmail.com', N'Male', N'3456787654', N'Hyderabad')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (27, N'venkat', N'a@gmail.com', N'Female', N'3456789', N'mumbai')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (28, N'Naresh', N'naresh@gmail.com', N'Male', N'98766567', N'Hyd')
GO
INSERT [dbo].[Register] ([UserID], [Name], [Email], [Gender], [Mobile], [Location]) VALUES (29, N'Naresh', N'na@gmail.com', N'Male', N'987654568', N'Hyderabad')
GO
SET IDENTITY_INSERT [dbo].[Register] OFF
GO
SET IDENTITY_INSERT [dbo].[Todo] ON 
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (26, N'happydays', N'Doing', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (27, N'buses', N'Doing', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (28, N'hello', N'Done', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (30, N'apple', N'Doing', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (31, N'newtask', N'Todo', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (32, N'assignment', N'Todo', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (33, N'hii', N'Todo', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (34, N'banana', N'Todo', NULL)
GO
INSERT [dbo].[Todo] ([TodoId], [Title], [Status], [UserID]) VALUES (35, N'Fruits', N'Todo', NULL)
GO
SET IDENTITY_INSERT [dbo].[Todo] OFF
GO
ALTER TABLE [dbo].[Boards]  WITH CHECK ADD  CONSTRAINT [FK_Boards_Register] FOREIGN KEY([UserID])
REFERENCES [dbo].[Register] ([UserID])
GO
ALTER TABLE [dbo].[Boards] CHECK CONSTRAINT [FK_Boards_Register]
GO
ALTER TABLE [dbo].[LoginUser]  WITH CHECK ADD  CONSTRAINT [FK_LoginUser_Register] FOREIGN KEY([UserID])
REFERENCES [dbo].[Register] ([UserID])
GO
ALTER TABLE [dbo].[LoginUser] CHECK CONSTRAINT [FK_LoginUser_Register]
GO
ALTER TABLE [dbo].[Todo]  WITH CHECK ADD  CONSTRAINT [FK_Todo_Register] FOREIGN KEY([UserID])
REFERENCES [dbo].[Register] ([UserID])
GO
ALTER TABLE [dbo].[Todo] CHECK CONSTRAINT [FK_Todo_Register]
GO
/****** Object:  StoredProcedure [dbo].[BoardSelectInfo]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[BoardSelectInfo]
@BoardName varchar(100)

 As
 Begin

select Board_Todo_Mapping.BoardID,Todo.TodoId,Todo.Title,Todo.Status,Boards.BoardName
from Todo
inner join Board_Todo_Mapping on Todo.TodoId=Board_Todo_Mapping.TodoId inner join Boards on Board_Todo_Mapping.BoardID=Boards.BoardID  where BoardName=@BoardName

 end
GO
/****** Object:  StoredProcedure [dbo].[CreateTodo]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CreateTodo](
    
     @Title Varchar(100),
	 @Status varchar(100)
    
 
 
 )
 As
 Begin

 INSERT INTO dbo.Todo
                        (
                         Title,
						 Status)

               VALUES  ( 
                         @Title,
                         @Status
						)

 end
GO
/****** Object:  StoredProcedure [dbo].[createUser]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[createUser](
     
     @Name Varchar(100)  
    ,@Email varchar(100) 
    ,@Gender varchar(100)
	,@Mobile varchar(100)
    ,@Location  varchar(100) 
	,@password varchar(100)
 
 
 )
 As
 Begin

 
   INSERT INTO dbo.Register
                        (
                         Name,
                         Email,
                         Gender,
                         Mobile,
						 Location)
               VALUES  ( 
			           
                         @Name,
                         @Email,
						 @Gender,
                         @Mobile,
                         @Location
						)

insert into dbo.LoginUser(
                      Email,
					  password)
					  
					  values(
					  @Email,
					  @password)
					  
	end				  
GO
/****** Object:  StoredProcedure [dbo].[DeleteTodo]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[DeleteTodo]
 @TodoId INT

 As
 begin

 delete from dbo.Todo where TodoId=@TodoId

 End
GO
/****** Object:  StoredProcedure [dbo].[GetTodo]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetTodo]
 As
 begin



  select TodoId,Title,Status from dbo.Todo 
l
 End
GO
/****** Object:  StoredProcedure [dbo].[UpdateTodo]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE Procedure [dbo].[UpdateTodo]
    @TodoId int,
    @Title varchar(100)
 As
 Begin

 update dbo.Todo set
				   Title=@Title
				   
				   where TodoId=@TodoId

 End
GO
/****** Object:  StoredProcedure [dbo].[UpdateTodoStatus]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[UpdateTodoStatus]
    @TodoId int,
    @Status varchar(100)
 As
 Begin

 update dbo.Todo set
				   Status=@Status
				   
				   where TodoId=@TodoId

 End
GO
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UserLogin](
 @Email varchar(100) ,
 @Password varchar(100)
 )
 as
 begin

 insert into dbo.LoginUser(
                      Email,
					  password)
					  
					  values(
					  @Email,
					  @password)

 end
GO
/****** Object:  StoredProcedure [dbo].[UserRegister]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[UserRegister](
     @Name Varchar(100)  
    ,@Email varchar(100) 
    ,@Gender varchar(100)
	,@Mobile varchar(100)
    ,@Location  varchar(100) 
         
                 )

				 as 
				 begin
				  INSERT INTO dbo.Register
                        (
                         Name,
                         Email,
                         Gender,
                         Mobile,
						 Location)
               VALUES  ( 
			            
                         @Name,
                         @Email,
						 @Gender,
                         @Mobile,
                         @Location
						)
 end
GO
/****** Object:  StoredProcedure [dbo].[Users]    Script Date: 26-04-2022 12:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Users](

@Email varchar(100),
@Password varchar(100))

 As
 begin



  select * from LoginUser where  Email=@Email AND Password=@Password

 End
GO
