﻿CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@Id int -- Идентификатор лица
AS
BEGIN
	SELECT [Persons].[Id]
		  ,[Persons].[Surname]
		  ,[Persons].[Name]
		  ,[Persons].[Patronymic]
		  ,[Persons].[DateOfBirth]
	 FROM [dbo].[Persons]
	 WHERE [Persons].[Id] = @Id;
END
