#SELECT horario.disciplina
#  FROM horario
#  inner join disciplina
#  on horario.disciplina = disciplina.id
#  WHERE horario.inicio = '7:30' and termino = '9:20';
  
drop view if exists filtro_disciplinas_horario;

CREATE VIEW filtro_disciplinas_horario AS
SELECT horario.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina = disciplina.id
  WHERE horario.inicio = '7:30' and termino = '9:20';

select * from filtro_disciplinas_horario;
