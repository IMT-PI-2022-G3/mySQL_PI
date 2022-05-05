create database projetoPI;
use projetoPI;

create table tb_Player
	(playerId integer not null auto_increment primary key, 
	playerName varchar(50), 
	foreign key (idFase) references tb_Fases(idFase)
	);

-- pontuacao 

create table tb_Questoes(
	questaoId integer not null primary key, 
	enunciado varchar(1000) not null,
	questoes varchar(8000),
    itemGabarito varchar(1),
    respostaCodigo varchar(500)
    );
    
    -- juntar itens ou nao
create table tb_Fase(
	idFase integer not null primary key,
    foreign key (questaoId) references tb_Questoes(questaoId)
    );

-- usar doc .pdf local ou integrado

-- fazer histórico? idHistórico / idPlayer / respostaCódigo / respostaAlternativa / data (dia, hora)


