--Questão 01: Crie uma tabela pessoa com os campos ID, nome, sobrenome e idade, com um clausula de checagem no campo idade, limitando os valores ( > 0)

CREATE TABLE Pessoa (
    ID int,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(60),
    Idade INT check(Idade >= 0)
);

--Questão 02: Altere a tabela pessoa e crie uma restrição utilizando a especificação unique para campos id, nome e sobrenome 

ALTER TABLE Pessoa
ADD CONSTRAINT Uni_pessoa UNIQUE (ID, Nome, Sobrenome);

--Questão 03: Altere a coluna idade da tabela pessoa e garanta que ela não receba valores nulos.
ALTER TABLE Pessoa
ALTER COLUMN Idade int not null;

--Questão 04.1: Crie uma tabela endereco com os campos ID e rua. Adicione o campo endereco na tabela pessoa 
--Questão 04.2: crie uma integridade referencial a partir deste campo com a tabela endereco.

CREATE TABLE Endereco (
    ID int primary key,
    Rua VARCHAR(50)
);

alter table Pessoa
add Endereco int;

alter table Pessoa
add constraint Pesso_endere
foreign key (Endereco) references Endereco(ID);
