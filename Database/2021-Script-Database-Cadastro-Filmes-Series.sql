/*---------- Criando o schema para o banco de dados --------*/
Drop Database If Exists dbSeriesFilmes; 
Create Database dbSeriesFilmes; 
Use dbSeriesFilmes;

/*--------- Criando as tabelas para o banco de dados -------*/
Create Table Filmes (
	Id Int Auto_Increment Primary Key,
    Tipo Int Not Null,				   /* 2=Filme / 1=Série */
    Nome Varchar(30) Not Null,
    Ep_Qtd int,
    Ep_Atual int,
    Ultima_Visualizacao Date Not Null Default Current_Timestamp
);

/*------------ Inserindo dados de testes na tabela ----------*/
Insert Into Filmes (Tipo, Nome, Ep_Qtd, Ep_Atual, Ultima_Visualizacao)
Values (1, "The Witcher", 8, 8, "2021-04-06");

Insert Into Filmes (Tipo, Nome, Ep_Qtd, Ep_Atual, Ultima_Visualizacao)
Values (1, "Anne with an E", 27, 27, "2020-06-10");

Insert Into Filmes (Tipo, Nome, Ep_Qtd, Ep_Atual, Ultima_Visualizacao)
Values (2, "Liga da Justiça", null, null, "2021-01-06");

Insert Into Filmes (Tipo, Nome, Ep_Qtd, Ep_Atual, Ultima_Visualizacao)
Values (2, "O Livro de Eli", null, null, "2021-01-12");

Insert Into Filmes (Tipo, Nome, Ep_Qtd, Ep_Atual, Ultima_Visualizacao)
Values (2, "Enola Holmes", null, null, "2021-02-08");

Insert Into Filmes (Tipo, Nome, Ep_Qtd, Ep_Atual, Ultima_Visualizacao)
Values (1, "Lucifer", 75, 8, "2021-03-06");

/*------------ Verificando dados de testes da tabela ----------*/
Select * From Filmes;






