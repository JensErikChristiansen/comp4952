MERGE INTO Program AS Target
USING (VALUES 
	(1, 'Tech Pro'),
	(2, 'Web and Mobile'),
	(3, 'Digital Processing'),
	(4, 'Information Systems'),
	(5, 'Sumfin'),
	(6, 'Sandwich Arts')
)
AS Source (ProgramID, ProgramName)
ON Target.ProgramID = Source.ProgramID
WHEN NOT MATCHED BY TARGET THEN
INSERT (ProgramName)
VALUES (ProgramName);


MERGE INTO Course AS Target 
USING (VALUES 
        (1, 'Economics', 3), 
        (2, 'Literature', 3), 
        (3, 'Chemistry', 4)
) 
AS Source (CourseID, CourseName, CourseCredits) 
ON Target.CourseID = Source.CourseID 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (CourseName, CourseCredits) 
VALUES (CourseName, CourseCredits);


MERGE INTO Student AS Target
USING (VALUES 
        (1, 'Tibbetts', 'Donnie', '2013-09-01', 3), 
        (2, 'Guzman', 'Liza', '2012-01-13', 1), 
		(3, 'Catlett', 'Phil', '2011-09-03', 2)
)
AS Source (StudentID, LastName, FirstName, Birthday, ProgramID)
ON Target.StudentID = Source.StudentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (LastName, FirstName, Birthday, ProgramID)
VALUES (LastName, FirstName, Birthday, ProgramID);


MERGE INTO CourseRegistration AS Target
USING (VALUES 
	(1, 2.00, 1, 1),
	(2, 3.50, 1, 2),
	(3, 4.00, 2, 3),
	(4, 1.80, 2, 1),
	(5, 3.20, 3, 1),
	(6, 4.00, 3, 2)
)
AS Source (CourseRegistrationID, Grade, CourseID, StudentID)
ON Target.CourseRegistrationID = Source.CourseRegistrationID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Grade, CourseID, StudentID)
VALUES (Grade, CourseID, StudentID);