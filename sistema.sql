drop DATABASE sistema;
create DATABASE sistema;
use sistema;

create TABLE aluno(
idal int primary key auto_increment,
nome varchar(50)
);

create TABLE professor(
idprof int primary key auto_increment,
nomeprof varchar(50)
);

create TABLE curso(
idcrs int primary key auto_increment,
nomecrs varchar(50)
);

create TABLE disciplina(
idis int primary key auto_increment,
nomedis varchar(50),
id_curso int(30)
);

create TABLE turma(
idtr int primary key auto_increment,
id_prof int(25),
id_disc int(50)
);

create TABLE turmalunos(
idta int primary key auto_increment,
id_turma int (25),
id_aluno int (25)
);

ALTER TABLE disciplina add constraint fk_id_curso foreign Key (id_curso) REFERENCES curso (idcrs);
ALTER TABLE turmalunos add constraint fk_id_turma foreign Key (id_turma) REFERENCES turma (idtr);
ALTER TABLE turmalunos add constraint fk_id_aluno foreign Key (id_aluno) REFERENCES aluno (idal);
ALTER TABLE turma add constraint fk_id_prof foreign Key (id_prof) REFERENCES professor (idprof);
ALTER TABLE turma add constraint fk_id_disc foreign Key (id_disc) REFERENCES disciplina (idis);

INSERT INTO aluno(nome) values ('Luluzinho');
INSERT INTO aluno(nome) values ('carol');
INSERT INTO aluno(nome) values ('Carolina');
INSERT INTO aluno(nome) values ('Cesar');

INSERT INTO professor(nomeprof) values ('Carlos');
INSERT INTO professor(nomeprof) values ('Wagner');
INSERT INTO professor(nomeprof) values ('Rogerio');
INSERT INTO professor(nomeprof) values ('Solange');
INSERT INTO professor(nomeprof) values ('Luciano');

INSERT INTO curso(nomecrs) values ('Adm');
INSERT INTO curso(nomecrs) values ('Informatica');
INSERT INTO curso(nomecrs) values ('Contabilidade');

INSERT INTO disciplina(nomedis,id_curso) values ('TLBDIII',2);
INSERT INTO disciplina(nomedis,id_curso) values ('PCII',2);
INSERT INTO disciplina(nomedis,id_curso) values ('ECO',1);
INSERT INTO disciplina(nomedis,id_curso) values ('LTT',1);
INSERT INTO disciplina(nomedis,id_curso) values ('CF',3);

INSERT INTO turmalunos(id_turma,id_aluno) values (1,1);
INSERT INTO turmalunos(id_turma,id_aluno) values (1,2);
INSERT INTO turmalunos(id_turma,id_aluno) values (2,1);
INSERT INTO turmalunos(id_turma,id_aluno) values (2,2);

INSERT INTO turma(id_prof,id_disc) values (1,1);
INSERT INTO turma(id_prof,id_disc) values (1,2);

SELECT*FROM aluno;
SELECT*FROM professor;
SELECT*FROM curso;
SELECT*FROM disciplina;
SELECT*FROM turmalunos;
SELECT*FROM turma;