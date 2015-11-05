CREATE TABLE [dbo].[Course]
(
	[CourseID]		INT           IDENTITY (1, 1) NOT NULL,
    [CourseName]    NVARCHAR (50) NULL,
    [CourseCredits]	INT           NULL,
    PRIMARY KEY CLUSTERED ([CourseID] ASC)
)
