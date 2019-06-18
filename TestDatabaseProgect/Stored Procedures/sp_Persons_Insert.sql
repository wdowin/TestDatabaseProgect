﻿CREATE PROCEDURE [dbo].[sp_Persons_Insert]
	@Id int -- Идентификатор лица
   ,@Surname nvarchar(50) -- Фамилия
   ,@Name nvarchar(50) -- Имя
   ,@Patronymic nvarchar(50) = NULL-- Отчество
   ,@DateOfBirth date = NULL -- Дата Рождения
AS
BEGIN
	-- SET NOCOUNT ON запрещает вывод количества строк, на которые влияет
	-- инструкция Transact-SQL, в составе результирующих данных
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Persons]
				([Id]
				,[Surname]
				,[Name]
				,[Patronymic]
				,[DateOfBirth])
		  VALUES
				(@Id
				,@Surname
				,@Name
				,@Patronymic
				,@DateOfBirth);
END
