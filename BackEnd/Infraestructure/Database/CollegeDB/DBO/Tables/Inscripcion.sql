CREATE TABLE [dbo].[Inscripcion]
(
	[Id] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT newid(), 
    [AlumnoId] UNIQUEIDENTIFIER NOT NULL, 
    [CursoId] UNIQUEIDENTIFIER NOT NULL, 
    [Docente] NVARCHAR(MAX) NOT NULL,
    constraint FK_Inscripcion_Alumno
    foreign key (AlumnoId) references Alumno(id),
    constraint FK_Inscripcion_Curso
    foreign key (CursoId) references Curso(id),
)
