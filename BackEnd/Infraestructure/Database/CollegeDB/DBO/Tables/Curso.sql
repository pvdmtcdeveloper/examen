CREATE TABLE [dbo].[Curso]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT newid() , 
    [NombreCurso] NVARCHAR(50) NOT NULL, 
    [HorasCurso] FLOAT NOT NULL, 
    [DescripcionCurso] NVARCHAR(MAX) NOT NULL
)
