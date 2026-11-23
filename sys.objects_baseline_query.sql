USE Bootcamp;
SELECT name, type_desc
FROM sys.objects
WHERE type IN ('FN', 'IF', 'TF', 'V', 'P', 'TR'); 