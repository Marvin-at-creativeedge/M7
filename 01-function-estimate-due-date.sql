USE Bootcamp;

GO
CREATE OR ALTER FUNCTION dbo.EstimateDueDate(@CreatedAt DATETIME2)
RETURNS DATETIME2
AS
BEGIN
	RETURN DATEADD(DAY,3, @CreatedAt);
END;
GO



SELECT TaskId, CreatedAt, dbo.EstimateDueDate(CreatedAt) AS DueDate FROM Tasks WHERE TaskId = 3;
