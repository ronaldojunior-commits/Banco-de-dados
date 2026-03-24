create DATABASE empresa;

USE empresa;

create table funcionario(
	id int auto_increment primary key,
    nome varchar(100),
    salario decimal(10, 2),
    departamento varchar(100),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) 

insert into funcionario (nome, salario, departamento) values ("Carlos", 3000, "TI");
insert into funcionario (nome, salario, departamento) values ("Maria", 4500, "RH");
insert into funcionario (nome, salario, departamento) values ("Joao", 5000, "TI");
insert into funcionario (nome, salario, departamento) values ("Ana", 3500, "Financeiro");
insert into funcionario (nome, salario, departamento) values ("Pedro", 2800, "RH");
insert into funcionario (nome, salario, departamento) values ("Juliana", 4200, "TI");  

select count(*) from funcionario;
select count(*) from funcionario WHERE departamento = 'TI';
select * from funcionario WHERE departamento = 'TI';
select * from funcionario WHERE salario > 4000;

update funcionario set salario = 3500 WHERE id = 1;


select * from funcionario;

UPDATE funcionario SET salario = salario * 1.10 WHERE departamento = 'RH';

DELETE FROM funcionario WHERE nome = 'Pedro';

SELECT * FROM funcionario ORDER BY salario DESC;

SELECT 
    AVG(salario) AS media_salarial, 
    MAX(salario) AS maior_salario, 
    MIN(salario) AS menor_salario 
FROM funcionario;

set sql_safe_updates = 0;
