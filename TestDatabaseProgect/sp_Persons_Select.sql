CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@Id int -- Идентификатор лица
AS
BEGIN
	SELECT [Persons].[Id]
		  ,[Persons].[Surname]
		  ,[Persons].[Name]
	 FROM [dbo].[Persons]
END
