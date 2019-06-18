CREATE PROCEDURE [dbo].[sp_Persons_Update]
	@Id int -- Идентификатор лица
   ,@Surname nvarchar(50) -- Фамилия
   ,@Name nvarchar(50) -- Имя
   ,@Patronymic nvarchar(50) = NULL-- Отчество
   ,@DateOfBirth date = NULL -- Дата Рождения
AS
EGIN
	-- SET NOCOUNT ON запрещает вывод количества строк, на которые влияет
	-- инструкция Transact-SQL, в составе результирующих данных
	SET NOCOUNT ON;	
	
	UPDATE [dbo].[Persons]
	   SET [Surname]	 = @Surname
	      ,[Name]		 = @Name
		  ,[@Patronymic] = @Patronymic
		  ,[@DateOfBirth]= @DateOfBirth
	WHERE [Id] = @Id;
END
