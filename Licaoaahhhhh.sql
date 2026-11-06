-- licao 1
insert into estado (SGESTADO, NMESTADO) VALUES ('SP', 'São Paulo'), ('RJ', 'Rio de Janeiro');
-- licao 2
insert into cidade(CDCIDADE,NMCIDADE,SGESTADO) VALUES (1,'São Paulo','SP'),(2,'Santo André','SP'),(3,'Campinas','SP'),(4,'Rio de Janeiro','RJ'),(5,'Niterói','RJ');
-- licao 3
insert into bairro(CDBAIRRO,NMBAIRRO,CDCIDADE,SGESTADO) VALUES (1,'Jardins',1,'SP'),(2,'Morumbi',1,'SP'),(3,'Aeroporto',1,'SP'),(1,'Aeroporto',1,'RJ'),(2,'Flamengo',1,'RJ');
-- licao 4
INSERT INTO vendedor (CDVENDEDOR, NMVENDEDOR, NMENDERECO, EMAIL) 
VALUES (1, 'MARIA DA SILVA', 'RUA DO GRITO, 45', 'msilva@novatec.com.br'),
(2, 'MARCOS ANDRADE', 'AV. DA SAUDADE, 325', 'mandrade@novatec.com.br'),
(3, 'ANDRE CARDOSO', 'AV BRASIL, 401', 'acardoso@novatec.com.br'),
(4, 'TATIANA SOUZA', 'RUA DO IMPERADOR, 778', 'tsouza@novatec.com.br');
-- licao 5
INSERT INTO imovel (CDIMOVEL, CDVENDEDOR, CDBAIRRO, CDCIDADE, SGESTADO, NMENDERECO, NRAREAUTIL, NRAREATOTAL, VLPRECO, IMOVEL_INDICADO) 
VALUES (1, 1, 1, 1, 'SP', 'AL TIETE, 3304 AP 101', 250, 400, 180000, NULL),
(2, 1, 2, 1, 'SP', 'AV MORUMBI, 2230', 150, 250, 135000, 1),
(3, 2, 1, 1, 'RJ', 'R GAL OSORIO, 445 AP 34', 250, 400, 185000, 2),
(4, 2, 2, 1, 'RJ', 'R D PEDRO I, 882', 120, 200, 110000, 1),
(5, 3, 3, 1, 'SP', 'AV RUBEM BERTA, 2355', 110, 200, 95000, 4),
(6, 4, 1, 1, 'RJ', 'R GETULIO VARGAS, 552', 200, 300, 99000, 5);
-- licao 6
INSERT INTO comprador (CDCOMPRADOR, NMCOMPRADOR, NMENDERECO, EMAIL) 
VALUES (1, 'EMMANUEL ANTUNES', 'R SARAIVA, 452', 'eantunes@novatec.com.br'),
(2, 'JOANA PEREIRA', 'AV PORTUGAL, 52', 'jpereira@novatec.com.br'),
(3, 'RONALDO CAMPELO', 'R ESTADOS UNIDOS, 790', 'rcampelo@novatec.com.br'),
(4, 'MANFRED AUGUSTO', 'AV BRASIL, 351', 'maugusto@novatec.com.br');
-- licao 7
INSERT INTO oferta (CDCOMPRADOR, CDIMOVEL, VLOFERTA, DTOFERTA) 
VALUES (1, 1, 170000, '2002-01-10'),
(1, 3, 180000, '2002-01-10'),
(2, 2, 135000, '2002-02-15'),
(2, 4, 100000, '2002-02-15'),
(3, 1, 160000, '2002-01-05'),
(3, 2, 140000, '2002-02-20');
-- licao 8
UPDATE imovel
SET VLPRECO = VLPRECO * 1.10;
-- licao 9
UPDATE imovel
SET VLPRECO = VLPRECO * 0.95
WHERE CDVENDEDOR = 1;
-- licao 10
UPDATE oferta
SET VLPRECO = VLPRECO * 1.05
WHERE CDCOMPRADOR = 2;
-- licao 11
UPDATE comprador
SET NMENDERECO = 'R ANANÁS, 45'
WHERE CDCOMPRADOR = 3;
-- licao 12
UPDATE oferta
SET VLOFERTA = 101000
WHERE CDIMOVEL = 4;
-- licao 13
DELETE FROM oferta
WHERE CDCOMPRADOR = 3 AND CDIMOVEL = 1;
-- licao 14
DELETE FROM cidade
WHERE CDCIDADE = 3;
-- licao 15
INSERT INTO FAIXA_IMOVEL(CDFAIXA,NMFAIXA,VLMINIMO,VLMAXIMO)
VALUES (1,'BAIXO',0,105000),
(2,'MÉDIO',105001,180000),
(3,'ALTO',180001,999999);