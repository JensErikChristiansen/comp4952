CREATE TABLE [dbo].[CourseRegistration]
(
	[CourseRegistrationID]	INT		IDENTITY (1, 1) NOT NULL,
	[CourseID]				INT		NULL,
	[StudentID]				INT		NULL,
	[Grade]					INT		NULL,
	PRIMARY KEY CLUSTERED ([CourseRegistrationID] ASC),
	CONSTRAINT [FK_dbo.CourseRegistration_dbo.Course_CourseID] FOREIGN KEY ([CourseID])
		REFERENCES [dbo].[Course] ([CourseID]) ON DELETE CASCADE,
	CONSTRAINT [FK_dbo.CourseRegistration_dbo.Student_StudentID] FOREIGN KEY ([StudentID])
		REFERENCES [dbo].[Student] ([StudentID]) ON DELETE CASCADE
)
