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


------------------------------------------

DELIMITER $$
CREATE PROCEDURE get_disciplina_horario(init time,term time)
BEGIN
SELECT horario.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina = disciplina.id
  WHERE horario.inicio = init and termino = term;
END$$
DELIMITER ;

CALL get_disciplina_horario('7:30','9:20');
