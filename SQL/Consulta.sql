--a) Encontre a MATRÍCULA(s) dos alunos com nota em BD12015-1 menor que 90;

SELECT tha.matricula FROM tb_alunos ta 
INNER JOIN tb_historico_academico tha
ON ta.matricula  = tha.matricula 
where tha.nota < 90 and   tha.codigo_turma  = 'BD12015-1';


--b) Encontre a MATRÍCULA(s) e calcule a média das notas dos alunos na disciplina de POO2015-1. 
--Observação na tablea esse valor "POO2015-1" so tem tabela na tb_historico_academico descrito como codigo da turma

select tb_historico_academico.matricula,avg(tb_historico_academico.nota) from tb_historico_academico
 where  tb_historico_academico.codigo_turma  = "POO2015-1" 


--c) Encontre o CODIGO do professor que ministra a turma WEB2015-1.


SELECT tt.codigo_professor  FROM tb_turma tt 
where tt.codigo_turma  = "WEB2015-1" ;



--d) Gere o histórico completo do aluno 2015010106 mostrando MATRICULA,CODIGO DA TURMA, CODIGO DA DISCIPLINA, CODIGO PROFESSOR, FREQUENCIA,NOTA.


SELECT tb_alunos.matricula,tb_historico_academico.codigo_turma,tb_turma.codigo_disciplina,
tb_turma.codigo_professor ,tb_historico_academico.frequencia ,tb_historico_academico.nota  FROM tb_alunos   
INNER JOIN tb_historico_academico 
ON tb_alunos.matricula  = tb_historico_academico.matricula 

INNER JOIN tb_turma 
ON  tb_turma.codigo_turma  = tb_historico_academico.codigo_turma 

where tb_alunos.matricula  = 2015010106
