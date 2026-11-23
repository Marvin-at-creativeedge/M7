USE Bootcamp;
GO
CREATE OR ALTER VIEW dbo.UserOpenTasks
AS
SELECT u.UserId, u.Name, u.Email, t.TaskId, t.Title, t.CreatedAt
FROM Users u
INNER JOIN Tasks t ON u.UserId = t.OwnerId
WHERE t.IsDone = 0;
GO

SELECT * FROM dbo.UserOpenTasks WHERE UserId = 1;