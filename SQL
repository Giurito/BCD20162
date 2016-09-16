CREATE table aluno (
  nome varchar(128) not null,
  documento char(11) primary key,
  telefone bigint,
  email varchar(128)
)

CREATE table curso (
  numero char(10) primary key,
  CHmin int,
  CHmax int,
  nome varchar(128) not null,
  campus ???
  curriculo ???
)

CREATE table campus (
nome varchar(128) primary key
)

CREATE table matricula (
  aluno char(11).
  curso ???,
  numero char(10) primary key,
  constraint fk_matricula_aluno_aluno_documento foreign key (aluno) references aluno(documento)
)

