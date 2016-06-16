-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.
CREATE DATABASE CAMPEONATOLD;



CREATE TABLE usuario (
id int PRIMARY KEY identity(1,1) ,
nome_usuario nVarchar(100),
senha_usuario nVarchar(12),
email_usuario nVarchar(100),
tipo_usuario int
)

CREATE TABLE t_bolao (
id int PRIMARY KEY identity(1,1),
gol_time_mandante int,
gol_time_visitante int,
pontos_adquiridos int,
id_partida int,
id_usuario int,
FOREIGN KEY(id_usuario) REFERENCES usuario (id)
)


CREATE TABLE acessos (
id int PRIMARY KEY identity(1,1),
numero_acessos int ,
)

CREATE TABLE time_campeonato (
id int PRIMARY KEY identity(1,1),
id_time int,
id_campeonato int
)

CREATE TABLE classificacao (
id int PRIMARY KEY identity(1,1),
pontos int,
jogos int,
vitoria int,
derrota int,
empate int,
gol_pro int,
gol_contra int,
id_campeonato int,
id_time int
)

CREATE TABLE t_jogador (
id int PRIMARY KEY identity(1,1),
nome nVarchar(100),
foto nVarchar(100),
posicao nVarchar(100),
descricao nVarchar(100)
)

CREATE TABLE times (
id int PRIMARY KEY identity(1,1),
nome nVarchar(100),
escudo nVarchar(100),
presidente nVarchar(100),
descricao nVarchar(500),
telefone nVarchar(100),
data_fundacao DateTime
)

select * from campeonato
CREATE TABLE campeonato (
id int PRIMARY KEY identity(1,1),
data_inicio datetime,
id_bolao int,
nome nVarchar(100),
FOREIGN KEY(id_bolao) REFERENCES t_bolao_campeonato (id)
)

alter table campeonato 
add  id_bolao int
FOREIGN KEY(id_bolao) REFERENCES t_bolao_campeonato (id);

CREATE TABLE partida (
id int PRIMARY KEY identity(1,1),
id_time_mandante int,
id_time_visitante int,
id_campeonato int,
data_partida datetime,
local_partida nVarchar(100),
rodada nVarchar(100),
remarcada_partida bit,
gol_time_mandante int,
gol_time_visitante int,
pontos_computado int,
nova_data_partida DateTime,
FOREIGN KEY(id_time_mandante) REFERENCES times (id),
FOREIGN KEY(id_time_visitante) REFERENCES times (id),
FOREIGN KEY(id_campeonato) REFERENCES campeonato (id)
)

CREATE TABLE T_BOLAO_CAMPEONATO (
id int PRIMARY KEY identity(1,1),
nome nVarchar(100)
)

CREATE TABLE fotos_videos (
id int PRIMARY KEY identity(1,1),
caminho nVarchar(100),
derscricao nVarchar(100),
id_time int,
video nVarchar(100),
id_campeonato int,
id_partida int,
FOREIGN KEY(id_time) REFERENCES times (id),
FOREIGN KEY(id_campeonato) REFERENCES campeonato (id),
FOREIGN KEY(id_partida) REFERENCES partida (id)
)

ALTER TABLE t_bolao ADD FOREIGN KEY(id_partida) REFERENCES partida (id)
ALTER TABLE time_campeonato ADD FOREIGN KEY(id_time) REFERENCES times (id)
ALTER TABLE time_campeonato ADD FOREIGN KEY(id_campeonato) REFERENCES campeonato (id)
ALTER TABLE classificacao ADD FOREIGN KEY(id_campeonato) REFERENCES campeonato (id)
ALTER TABLE classificacao ADD FOREIGN KEY(id_time) REFERENCES times (id)

--INSERT USUARIOS

INSERT INTO usuario (nome_usuario, email_usuario, senha_usuario, tipo_usuario)
            values ('JOAOCELSON', 'joaocelson@gmail.com', 'ibititec', 1);

--INSERT T_BOLAO_CAMPEONATO
INSERT INTO T_BOLAO_CAMPEONATO (nome) VALUES ('BOLAO');

--INSERT INTO CAMPEONATO
SELECT * FROM campeonato;
INSERT INTO campeonato (nome, data_inicio)
values ('GRUPO A', '20160702 13:00:00 PM');

INSERT INTO campeonato (nome, data_inicio)
values ('GRUPO B', '20160702 13:00:00 PM');

INSERT INTO campeonato (nome, data_inicio)
values ('CHAVE C', '20160702 13:00:00 PM');

INSERT INTO campeonato (nome, data_inicio)
values ('CHAVE D', '20160702 13:00:00 PM');


--INSERT TIME
SELECT * FROM times;

1- 
2- 
3- JF Mamutes
GRUPO B
1- 
2- 
3- 


-- GRUPO A
INSERT INTO times (nome, escudo, descricao, presidente, data_fundacao, telefone)
VALUES ('Centauros FA', 'Centaurosfa.png', '','', '20000704 00:00:00 AM', '');
INSERT INTO times (nome, escudo, descricao, presidente, data_fundacao, telefone)
VALUES ('Maquinistas FA', 'MaquinistasFA.png', '','', '20000704 00:00:00 AM', '');
INSERT INTO times (nome, escudo, descricao, presidente, data_fundacao, telefone)
VALUES ('JF Mamutes', 'JFMamutes.png', '','', '20000704 00:00:00 AM', '');

-- CHAVE B

INSERT INTO times (nome, escudo, descricao, presidente, data_fundacao, telefone)
VALUES ('Tupãs Futebol Americano', 'Tupas.png', '','', '20000704 00:00:00 AM', '');
INSERT INTO times (nome, escudo, descricao, presidente, data_fundacao, telefone)
VALUES ('Matias Barbosa Primatas', 'Primatas.png', '','', '20000704 00:00:00 AM', '');
INSERT INTO times (nome, escudo, descricao, presidente, data_fundacao, telefone)
VALUES ('Juiz de Fora Red Fox', 'RedFox.png', '','', '20000704 00:00:00 AM', '');


1,SAODOMINGOS,3
2,PEROBAS,3
3,SERAB,3
4,SOCIAL,3
5,POCOPEDRA,0
6,POLEMICA,0
7,PIUNA,0
8,ORVALHO,0
8,ORVALHO,0

select * from time_campeonato
--INSERT TIME_CAMPEONATO

--GRUPO A
INSERT INTO time_campeonato (id_campeonato, id_time)
VALUES (1,1);
INSERT INTO time_campeonato (id_campeonato, id_time)
VALUES (1,2);
INSERT INTO time_campeonato (id_campeonato, id_time)
VALUES (1,3);
INSERT INTO time_campeonato (id_campeonato, id_time)
VALUES (1,4);
INSERT INTO time_campeonato (id_campeonato, id_time)
VALUES (1,5);
INSERT INTO time_campeonato (id_campeonato, id_time)
VALUES (1,6);

select * from times

--INSERT PARTIDAS

INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20160814 02:00:00 PM',1,3,'SÃO JOÃO NEPOMUCENO','1');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20160821 02:00:00 PM',4,6,'UBÁ','1');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20160828 02:00:00 PM',2,5,'GUARARÁ','1');

INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20160904 02:00:00 PM',3,4,'JUIZ DE FORA','2');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20160911 02:00:00 PM',5,1,'MATIAS BARBOSA','2');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20160918 02:00:00 PM',6,2,'JUIZ DE FORA','2');

INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20160925 02:00:00 PM',4,5,'UBÁ','3');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161002 02:00:00 PM',2,1,'GUARARÁ','3');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161009 02:00:00 PM',3,6,'JUIZ DE FORA','3');

INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161023 02:00:00 PM',1,4,'SANTA TEREZINHA','4');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161030 02:00:00 PM',5,3,'MATIAS BARBOSA','4');

INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161106 02:00:00 PM',6,1,'JUIZ DE FORA','5');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161106 02:00:00 PM',4,2,'UBÁ','5');

INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161120 02:00:00 PM',6,5,'JUIZ DE FORA','6');
INSERT INTO partida (id_campeonato,data_partida, id_time_mandante, id_time_visitante, local_partida, rodada) VALUES (1,'20161120 02:00:00 PM',3,2,'JUIZ DE FORA','6');

update partida set local_partida = 'BICAS' where local_partida = 'GUARARÁ';

select * from times;

SELECT POSICAO = Row_Number() Over(Order by c.pontos Desc,  c.vitoria,( c.gol_pro - c.gol_contra) desc), c.*,c.gol_pro - c.gol_contra as saldo_gols, tm.nome tm_nome, c.id_campeonato id_campeonato FROM classificacao c INNER JOIN Times tm on tm.id = c.id_time INNER JOIN Campeonato ca on ca.id = c.id_campeonato  WHERE tm.id  IN (1) 


update times set escudo = 'Centaurosfa' where id = 1;
update times set escudo = 'MaquinistasFA' where id = 2;
update times set escudo = 'JFMamutes' where id = 3;
update times set escudo = 'Tupas' where id = 4;
update times set escudo = 'Primatas' where id = 5;
update times set escudo = 'RedFox' where id = 6;