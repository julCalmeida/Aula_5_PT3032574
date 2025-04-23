--Questão 01. Crie uma tabela pessoa com os campos ID, nome, sobrenome e idade. 
--Crie uma cláusula de checagem para o campo idade, impedindo que valores menores que 0 sejam adicionados.
CREATE TABLE Pessoa (
    ID int,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(60),
    Idade INT check(Idade >= 0)
);

--Questão 02. Altere a tabela pessoa e crie uma restrição utilizando a especificação unique ( A1, A2, …, Am) 
--para os campos ID, nome e sobrenome.
ALTER TABLE Pessoa
ADD CONSTRAINT Uni_pessoa UNIQUE (ID, Nome, Sobrenome);

--Altere a coluna idade da tabela pessoa e garanta que ela não receba valores nulos.
ALTER TABLE Pessoa
ALTER COLUMN Idade int not null;
--Crie uma tabela endereco com os campos ID e rua. Adicione o campo endereco na tabela pessoa 
--crie uma integridade referencial a partir deste campo com a tabela endereco.

CREATE TABLE Endereco (
    ID int primary key,
    Rua VARCHAR(50)
);

alter table Pessoa
add Endereco int;

alter table Pessoa
add constraint Pesso_endere
foreign key (Endereco) references Endereco(ID);
