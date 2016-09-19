CREATE table aluno (
  nome varchar(128) not null,
  documento char(11) primary key,
  telefone bigint,
  email varchar(128)
);

CREATE table campus (
nome varchar(128) primary key
);

CREATE table curso (
  campus varchar(128),
  curriculo ???,
  numero char(10) primary key,
  CHmin int,
  CHmax int,
  nome varchar(128) not null,
  constraint fk_curso_campus_campus_nome foreign key (campus) references campus(nome),
  constraint fk_curso_curriculo_curriculo_??? foreign key (curriculo) references curriculo(???)
);

CREATE table matricula (
  aluno char(11),
  curso char(10),
  numero char(10) primary key,
  constraint fk_matricula_aluno_aluno_documento foreign key (aluno) references aluno(documento),
  constraint fk_matricula_curso_curso_numero foreign key (curso) references curso(numero)
);

