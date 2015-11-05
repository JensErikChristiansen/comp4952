CREATE TABLE [dbo].[Student]
(
	[StudentID]		INT				IDENTITY (1, 1) NOT NULL,
	[FirstName]		NVARCHAR (50)	NULL,
	[LastName]		NVARCHAR (50)	NULL,
	[Birthday]		DATETIME		NULL,
	[ProgramID]		INT				NULL,
	PRIMARY KEY CLUSTERED ([StudentID] ASC),
	CONSTRAINT [FK_dbo.Student_dbo.Program_ProgramID] FOREIGN KEY ([ProgramID])
		REFERENCES [dbo].[Program] ([ProgramID]) ON DELETE CASCADE
)
