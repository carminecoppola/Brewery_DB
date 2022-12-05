--FORNITORE
insert into Fornitore values (00011000011,'AURIAN SAS','Condom','32100','5 Avenue de la Gare');
insert into Fornitore values (00011000012,'ASIA EUROPE TRADE','Liege','4000','25 rue de Rotterdam');
insert into Fornitore values (00011000013,'E-SARDINIA ','Oristano','09170','Via Santa Petronilla 15');
insert into Fornitore values (00011000014,'NOSTRALE','Milano','20157','Via G. Ungaretti 23');
insert into Fornitore values (00011000015,'PRATOROSSO','Milano','20107','Cascina Gaita 5');
insert into Fornitore values (00011000016,'MARCONI','Novara','30040','5 Avenue de la Gare');
insert into Fornitore values (00011000017,'BRASSERIE DE BRUNEHAUT SA','Brunehaut','7623','17 rue des Panneries');
insert into Fornitore values (00011000018,'SWISS CHIPS GMBH','Schneisingen','5425','4 Schulstrasse');
insert into Fornitore values (00011000019,'RESONE','Paris','75008','1 Rue De Stockholm');
insert into Fornitore values (00011000020,'VETRARIA','Savignano Sul Rubicone','47039','Via Emilia Est 23');
insert into Fornitore values (00011000021,'BROUWERIJ DE FENIKS CVBA','Heule','8501','138 Mellestraat');
insert into Fornitore values (00011000022,'FLECKS BRAUHAUS TECHNIK GMBH ','Frohnleiten','8130','Rothleiten 64');
insert into Fornitore values (00011000023,'KURSK BREWERY, LLC','Kursk','30502','Magistralny 18');
insert into Fornitore values (00011000024,'BEERINBA DI BARBORA','Vigevano','27029','Via Carrobbio 18');
insert into Fornitore values (00011000025,'DE-GUSTAMI','Milano','20131','Via Vallazze 95');

--MASTRO BIRRAIO

insert into MastroBirraio values ('IT0011220','Maurizio','Scarponi',TO_DATE('15/01/1992','DD/MM/YYYY'),TO_DATE('25/01/2006','DD/MM/YYYY'),1600.00);
insert into MastroBirraio values ('IT0011221','Gemma','Moretti',TO_DATE('23/09/1982','DD/MM/YYYY'),TO_DATE('07/01/2007','DD/MM/YYYY'),1600.00);
insert into MastroBirraio values ('IT0011222','Giampiero','Barzini',TO_DATE('12/06/1993','DD/MM/YYYY'),TO_DATE('08/02/2008','DD/MM/YYYY'),1100.00);
insert into MastroBirraio values ('IT0011223','Francesca','Ferrara',TO_DATE('13/07/1994','DD/MM/YYYY'),TO_DATE('04/03/2005','DD/MM/YYYY'),1200.00);
insert into MastroBirraio values ('IT0011224','Sante','Armani',TO_DATE('01/02/1987','DD/MM/YYYY'),TO_DATE('20/02/2009','DD/MM/YYYY'),1150.00);
insert into MastroBirraio values ('IT0011225','Luigi','Fallaci',TO_DATE('18/03/1982','DD/MM/YYYY'),TO_DATE('15/06/2008','DD/MM/YYYY'),1450.00);
insert into MastroBirraio values ('IT0011226','Renata','Torricelli',TO_DATE('24/03/1992','DD/MM/YYYY'),TO_DATE('12/06/2005','DD/MM/YYYY'),1600.00);
insert into MastroBirraio values ('IT0011227','Veronica','Jovinelli',TO_DATE('21/11/1996','DD/MM/YYYY'),TO_DATE('11/06/2009','DD/MM/YYYY'),1150.00);
insert into MastroBirraio values ('IT0011228','Lorenzo','Caccianemico',TO_DATE('14/12/1999','DD/MM/YYYY'),TO_DATE('18/05/2007','DD/MM/YYYY'),1150.00);
insert into MastroBirraio values ('IT0011229','Federico','Iannelli',TO_DATE('16/09/1986','DD/MM/YYYY'),TO_DATE('16/05/2010','DD/MM/YYYY'),1450.00);
insert into MastroBirraio values ('IT0011230','Luisa ','Santoro',TO_DATE('11/03/1982','DD/MM/YYYY'),TO_DATE('19/04/2008','DD/MM/YYYY'),1600.00);
insert into MastroBirraio values ('IT0011231','Adelmo','Tafuri',TO_DATE('04/05/1980','DD/MM/YYYY'),TO_DATE('20/04/2006','DD/MM/YYYY'),1450.00);
insert into MastroBirraio values ('IT0011232','Piero','Malacarne',TO_DATE('03/06/1990','DD/MM/YYYY'),TO_DATE('21/07/2005','DD/MM/YYYY'),1200.00);
insert into MastroBirraio values ('IT0011233','Ciro','Bellini',TO_DATE('11/12/1988','DD/MM/YYYY'),TO_DATE('30/08/2000','DD/MM/YYYY'),1600.00);
insert into MastroBirraio values ('IT0011234','Franco','Mastroianni',TO_DATE('17/10/1981','DD/MM/YYYY'),TO_DATE('29/11/2004','DD/MM/YYYY'),1150.00);


--CONTENITORE

insert into Contenitore values (1,'IT0011220','Bollitore',400,500,2000);
insert into Contenitore values (2,'IT0011221','Fermentatore',200,300,1500);
insert into Contenitore values (3,'IT0011222','Bollitore',500,600,2500);
insert into Contenitore values (4,'IT0011223','Fermentatore',200,300,1500);
insert into Contenitore values (5,'IT0011224','Bollitore',400,500,2000);
insert into Contenitore values (6,'IT0011225','Bollitore',450,600,2500);
insert into Contenitore values (7,'IT0011226','Bollitore',250,300,1500);
insert into Contenitore values (8,'IT0011227','Fermentatore',350,500,2000);
insert into Contenitore values (9,'IT0011228','Fermentatore',250,300,1500);
insert into Contenitore values (10,'IT0011229','Bollitore',400,500,2000);
insert into Contenitore values (11,'IT0011230','Bollitore',575,600,2500);
insert into Contenitore values (12,'IT0011231','Fermentatore',400,500,2000);
insert into Contenitore values (13,'IT0011232','Bollitore',500,600,2500);
insert into Contenitore values (14,'IT0011233','Fermentatore',400,500,2000);
insert into Contenitore values (15,'IT0011234','Fermentatore',200,300,1500);


--PUB
insert into PUB values ('PT00-01','Casa del Popolo','Verbano','Via F.lli Borghini 34','28877');
insert into PUB values ('PT00-02','Le Baladin','Piozzo','Piazza V Luglio 15','12060');
insert into PUB values ('PT00-03','Cicci Coccò','Castelceriolo','Via Pietro Milanese 13','15100');
insert into PUB values ('PT00-04','Grado Plato','Chieri','Viale Fasano 36','10023');
insert into PUB values ('PT00-05','Birrificio di Orta','Orta S. Giulio','Via Domodossola 7','28016');
insert into PUB values ('PT00-06','Birrificio di Pettenasco','Pettenasco','Via Roma 70','28028');
insert into PUB values ('PT00-07','Snack Troll','Vernante','Strada Valle Grande 15','12019');
insert into PUB values ('PT00-08','Bio Birre','Santena','Via Circonvallazione 186','10100');
insert into PUB values ('PT00-09','BEFeD','Settimo Torinese','Via Ariosto 36','10100');
insert into PUB values ('PT00-10','Enoteca Le Marne','Savigliano','ViaTapparelli 6','12038');
insert into PUB values ('PT00-11','Taverna del Borgo','Livorno Ferraris','Via Dante 6','13046');
insert into PUB values ('PT00-12','Enoteca DOC','Marigliano','Via Giannone 87','80034');
insert into PUB values ('PT00-13','Flint Pub','Novi Ligure','Via Roma 51/53','15067');
insert into PUB values ('PT00-14','Birreria Bavarese','Biella','Via Paietta 10','13836');
insert into PUB values ('PT00-15','Central Park','Alessandria','Piazza Banda Lenti 2','15030');

--MATERIE PRIME
insert into MateriaPrima values (0011020103001,'Malto','Regno Unito');
insert into MateriaPrima values (0011020103002,'Lievito','Regno Unito');
insert into MateriaPrima values (0011020103003,'Malto','Belgio');
insert into MateriaPrima values (0011020103004,'Luppolo','Regno Unito');
insert into MateriaPrima values (0011020103005,'Lievito','Scozia');
insert into MateriaPrima values (0011020103006,'Lievito','Italia');
insert into MateriaPrima values (0011020103007,'Luppolo','Belgio');
insert into MateriaPrima values (0011020103008,'Malto','USA');
insert into MateriaPrima values (0011020103009,'Luppolo','Scozia');
insert into MateriaPrima values (0011020103010,'Lievito','USA');
insert into MateriaPrima values (0011020103011,'Malto','Italia');
insert into MateriaPrima values (0011020103012,'Lievito','Belgio');
insert into MateriaPrima values (0011020103013,'Luppolo','USA');
insert into MateriaPrima values (0011020103014,'Luppolo','Italia');
insert into MateriaPrima values (0011020103015,'Malto','Scozia');

--MALTO
insert into Malto values (0011020103001,'CARA GOLD','Orzo',0);
insert into Malto values (0011020103003,'SPECIAL B','Segale',0);
insert into Malto values (0011020103008,'CRYSTAL 400','Mais',0);
insert into Malto values (0011020103011,'CARA RED','Frumento',0);
insert into Malto values (0011020103015,'CARA AMBER','Orzo',0);

--LUPPOLO
insert into Luppolo values (0011020103004,'Cannabaceae','Amaricante',0);
insert into Luppolo values (0011020103007,'Urticales','Aromatizzante',0);
insert into Luppolo values (0011020103009,'Humulus lupulus ','Misto',0);
insert into Luppolo values (0011020103013,'Humulus','Amaricante',0);
insert into Luppolo values (0011020103014,'Humulus yunnanensis','Aromatizzante',0);

--LIEVITO
insert into Lievito values (0011020103002,'Saccharomyces Cerevisiae',0);
insert into Lievito values (0011020103005,'Saccharomyces Cerevisiae',0);
insert into Lievito values (0011020103006,'Saccharomyces Carlsbergensis',0);
insert into Lievito values (0011020103010,'Saccharomyces Cerevisiae',0);
insert into Lievito values (0011020103012,'Saccharomyces Carlsbergensis',0);

--TIPI DI BIRRA
insert into TipoBirra values (0011020103001,'IT0011220','Stout',8.5,'Scura',0,100.00);
insert into TipoBirra values (0011020103002,'IT0011221','Chimay Blanche',9,'Bionda',0,110.00);
insert into TipoBirra values (0011020103003,'IT0011222','Lindemans',9,'Rossa',0,75.00);
insert into TipoBirra values (0011020103004,'IT0011223','Brown Ale',8.5,'Scura',0,100.00);
insert into TipoBirra values (0011020103005,'IT0011224','Lager',7.5,'Bionda',0,90.00);
insert into TipoBirra values (0011020103006,'IT0011225','Leffe',8.5,'Rossa',0,100.00);
insert into TipoBirra values (0011020103007,'IT0011226','Pecheresse',2.5,'Bionda',0,100.00);
insert into TipoBirra values (0011020103008,'IT0011227','Messina',3,'Rossa',0,95.00);
insert into TipoBirra values (0011020103009,'IT0011228','Pale Ale',5.5,'Bionda',0,100.00);
insert into TipoBirra values (0011020103010,'IT0011229','Porter',6.5,'Scura',0,100.00);
insert into TipoBirra values (0011020103011,'IT0011230','Chimay Bleue',9,'Scura',0,70.00);
insert into TipoBirra values (0011020103012,'IT0011231','Rochefort 6',7.5,'Rossa',0,100.00);
insert into TipoBirra values (0011020103013,'IT0011232','Omer',5.5,'Scura',0,85.00);
insert into TipoBirra values (0011020103014,'IT0011233','Chimay Rouge',7,'Rossa',0,120.00);
insert into TipoBirra values (0011020103015,'IT0011234','Ichnusa',5.5,'Bionda',0,100.00);

--ORDINE APPROVVIGGIONAMENTO
------qua
insert into OrdineApproviggionamento values (00345601,00011000011,TO_DATE('01/01/2021','DD/MM/YYYY'),'Bonifico','US-345IT01');
insert into OrdineApproviggionamento values (00345602,00011000012,TO_DATE('01/02/2021','DD/MM/YYYY'),'Assegno','US-345IT02');
insert into OrdineApproviggionamento values (00345603,00011000013,TO_DATE('15/03/2021','DD/MM/YYYY'),'Bonifico','US-345IT03');
insert into OrdineApproviggionamento values (00345604,00011000014,TO_DATE('02/04/2021','DD/MM/YYYY'),'Assegno','US-345IT04');
insert into OrdineApproviggionamento values (00345605,00011000015,TO_DATE('15/04/2021','DD/MM/YYYY'),'Bonifico','US-345IT05');
insert into OrdineApproviggionamento values (00345606,00011000016,TO_DATE('15/05/2021','DD/MM/YYYY'),'Bonifico','US-345IT06');
insert into OrdineApproviggionamento values (00345607,00011000017,TO_DATE('29/06/2021','DD/MM/YYYY'),'Bonifico','US-345IT07');
insert into OrdineApproviggionamento values (00345608,00011000018,TO_DATE('01/08/2021','DD/MM/YYYY'),'Assegno','US-345IT08');
insert into OrdineApproviggionamento values (00345609,00011000019,TO_DATE('01/09/2021','DD/MM/YYYY'),'Assegno','US-345IT09');
insert into OrdineApproviggionamento values (00345610,00011000020,TO_DATE('15/09/2021','DD/MM/YYYY'),'Bonifico','US-345IT10');
insert into OrdineApproviggionamento values (00345611,00011000021,TO_DATE('29/09/2021','DD/MM/YYYY'),'Assegno','US-345IT11');
insert into OrdineApproviggionamento values (00345612,00011000022,TO_DATE('01/11/2021','DD/MM/YYYY'),'Bonifico','US-345IT12');
insert into OrdineApproviggionamento values (00345613,00011000023,TO_DATE('01/12/2021','DD/MM/YYYY'),'Bonifico','US-345IT13');
insert into OrdineApproviggionamento values (00345614,00011000024,TO_DATE('15/01/2022','DD/MM/YYYY'),'Assegno','US-345IT14');
insert into OrdineApproviggionamento values (00345615,00011000025,TO_DATE('15/02/2022','DD/MM/YYYY'),'Bonifico','US-345IT15');

--LOTTO MATERIA PRIMA
insert into LottoMateriaPrima values ('LT-0220001',0011020103001,00345601,200.99,0,TO_DATE('01/03/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220002',0011020103002,00345602,100.99,0,TO_DATE('05/04/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220003',0011020103003,00345603,200.99,0,TO_DATE('23/05/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220004',0011020103004,00345604,100.99,0,TO_DATE('15/06/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220005',0011020103005,00345605,300.99,0,TO_DATE('10/07/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220006',0011020103006,00345606,90.99,0,TO_DATE('04/08/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220007',0011020103007,00345607,150.99,0,TO_DATE('03/09/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220008',0011020103008,00345608,200.99,0,TO_DATE('10/09/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220009',0011020103009,00345609,250.99,0,TO_DATE('18/09/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220010',0011020103010,00345610,210.99,0,TO_DATE('01/10/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220011',0011020103011,00345611,200.99,0,TO_DATE('11/10/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220012',0011020103012,00345612,175.99,0,TO_DATE('20/11/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220013',0011020103013,00345613,160.99,0,TO_DATE('15/12/2021','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220014',0011020103014,00345614,200.99,0,TO_DATE('15/01/2022','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220015',0011020103015,00345615,120.99,0,TO_DATE('27/02/2022','DD/MM/YYYY'));


--MOSTO DOLCE
insert into MostoDolce values ('LT-0220004',0011020103004,TO_DATE('01/02/2021','DD/MM/YYYY'),0,50,1);
insert into MostoDolce values ('LT-0220007',0011020103007,TO_DATE('01/03/2021','DD/MM/YYYY'),0,50,1);
insert into MostoDolce values ('LT-0220009',0011020103009,TO_DATE('01/04/2021','DD/MM/YYYY'),0,50,1);
insert into MostoDolce values ('LT-0220013',0011020103013,TO_DATE('01/05/2021','DD/MM/YYYY'),0,50,1);
insert into MostoDolce values ('LT-0220014',0011020103014,TO_DATE('01/06/2021','DD/MM/YYYY'),0,50,1);

--AMMOSTAMENTO
insert into Ammostamento values (1,TO_DATE('02/02/2021','DD/MM/YYYY'),0011020103001,'LT-0220001','LT-0220004',1,1);
insert into Ammostamento values (3,TO_DATE('02/03/2021','DD/MM/YYYY'),0011020103002,'LT-0220002','LT-0220007',1,1);
insert into Ammostamento values (5,TO_DATE('02/04/2021','DD/MM/YYYY'),0011020103003,'LT-0220003','LT-0220009',1,1);
insert into Ammostamento values (6,TO_DATE('02/05/2021','DD/MM/YYYY'),0011020103004,'LT-0220004','LT-0220013',1,1);
insert into Ammostamento values (7,TO_DATE('02/06/2021','DD/MM/YYYY'),0011020103005,'LT-0220005','LT-0220014',1,1);
insert into Ammostamento values (10,TO_DATE('02/07/2021','DD/MM/YYYY'),0011020103006,'LT-0220006','LT-0220004',2,2);
insert into Ammostamento values (11,TO_DATE('02/08/2021','DD/MM/YYYY'),0011020103007,'LT-0220007','LT-0220007',2,2);
insert into Ammostamento values (13,TO_DATE('02/09/2021','DD/MM/YYYY'),0011020103008,'LT-0220008','LT-0220009',2,2);
insert into Ammostamento values (1,TO_DATE('02/10/2021','DD/MM/YYYY'),0011020103009,'LT-0220009','LT-0220013',2,2);
insert into Ammostamento values (3,TO_DATE('02/11/2021','DD/MM/YYYY'),0011020103010,'LT-0220010','LT-0220014',2,2);
insert into Ammostamento values (5,TO_DATE('02/12/2021','DD/MM/YYYY'),0011020103011,'LT-0220011','LT-0220004',3,3);
insert into Ammostamento values (6,TO_DATE('02/01/2022','DD/MM/YYYY'),0011020103012,'LT-0220012','LT-0220007',3,3);
insert into Ammostamento values (7,TO_DATE('02/02/2022','DD/MM/YYYY'),0011020103013,'LT-0220013','LT-0220009',3,3);
insert into Ammostamento values (10,TO_DATE('02/03/2022','DD/MM/YYYY'),0011020103014,'LT-0220014','LT-0220013',3,3);
insert into Ammostamento values (11,TO_DATE('02/04/2022','DD/MM/YYYY'),0011020103015,'LT-0220015','LT-0220014',3,3);


--BIRRA PRODOTTA
insert into BirraProdotta values ('BP-0010201',TO_DATE('15/02/2021','DD/MM/YYYY'),'LT-0220004',0011020103001,0);
insert into BirraProdotta values ('BP-0010202',TO_DATE('15/03/2021','DD/MM/YYYY'),'LT-0220007',0011020103002,0);
insert into BirraProdotta values ('BP-0010203',TO_DATE('15/04/2021','DD/MM/YYYY'),'LT-0220009',0011020103003,0);
insert into BirraProdotta values ('BP-0010204',TO_DATE('15/05/2021','DD/MM/YYYY'),'LT-0220013',0011020103004,0);
insert into BirraProdotta values ('BP-0010205',TO_DATE('15/06/2021','DD/MM/YYYY'),'LT-0220014',0011020103005,0);
insert into BirraProdotta values ('BP-0010206',TO_DATE('15/07/2021','DD/MM/YYYY'),'LT-0220004',0011020103006,0);
insert into BirraProdotta values ('BP-0010207',TO_DATE('15/08/2021','DD/MM/YYYY'),'LT-0220007',0011020103007,0);
insert into BirraProdotta values ('BP-0010208',TO_DATE('15/09/2021','DD/MM/YYYY'),'LT-0220009',0011020103008,0);
insert into BirraProdotta values ('BP-0010209',TO_DATE('15/10/2021','DD/MM/YYYY'),'LT-0220013',0011020103009,0);
insert into BirraProdotta values ('BP-0010210',TO_DATE('15/11/2021','DD/MM/YYYY'),'LT-0220014',0011020103010,0);
insert into BirraProdotta values ('BP-0010211',TO_DATE('15/12/2021','DD/MM/YYYY'),'LT-0220004',0011020103011,0);
insert into BirraProdotta values ('BP-0010212',TO_DATE('15/01/2022','DD/MM/YYYY'),'LT-0220007',0011020103012,0);
insert into BirraProdotta values ('BP-0010213',TO_DATE('15/02/2022','DD/MM/YYYY'),'LT-0220009',0011020103013,0);
insert into BirraProdotta values ('BP-0010214',TO_DATE('15/03/2022','DD/MM/YYYY'),'LT-0220013',0011020103014,0);
insert into BirraProdotta values ('BP-0010215',TO_DATE('15/04/2022','DD/MM/YYYY'),'LT-0220014',0011020103015,0);

--FERMENTAZIONE
insert into Fermentazione values (2,'Alta',TO_DATE('04/02/2021','DD/MM/YYYY'),TO_DATE('11/02/2021','DD/MM/YYYY'),'LT-0220004',0011020103001,'LT-0220001',1,'BP-0010201');
insert into Fermentazione values (4,'Bassa',TO_DATE('04/03/2021','DD/MM/YYYY'),TO_DATE('11/03/2021','DD/MM/YYYY'),'LT-0220007',0011020103002,'LT-0220002',1,'BP-0010202');
insert into Fermentazione values (8,'Alta',TO_DATE('04/04/2021','DD/MM/YYYY'),TO_DATE('11/04/2021','DD/MM/YYYY'),'LT-0220009',0011020103003,'LT-0220003',1,'BP-0010203');
insert into Fermentazione values (9,'Alta',TO_DATE('04/05/2021','DD/MM/YYYY'),TO_DATE('11/05/2021','DD/MM/YYYY'),'LT-0220013',0011020103004,'LT-0220004',1,'BP-0010204');
insert into Fermentazione values (12,'Bassa',TO_DATE('04/06/2021','DD/MM/YYYY'),TO_DATE('11/06/2021','DD/MM/YYYY'),'LT-0220014',0011020103005,'LT-0220005',1,'BP-0010205');
insert into Fermentazione values (14,'Alta',TO_DATE('04/07/2021','DD/MM/YYYY'),TO_DATE('11/07/2021','DD/MM/YYYY'),'LT-0220004',0011020103006,'LT-0220006',1,'BP-0010206');
insert into Fermentazione values (15,'Bassa',TO_DATE('04/08/2021','DD/MM/YYYY'),TO_DATE('11/08/2021','DD/MM/YYYY'),'LT-0220007',0011020103007,'LT-0220007',1,'BP-0010207');
insert into Fermentazione values (2,'Alta',TO_DATE('04/09/2021','DD/MM/YYYY'),TO_DATE('11/09/2021','DD/MM/YYYY'),'LT-0220009',0011020103008,'LT-0220008',1,'BP-0010208');
insert into Fermentazione values (4,'Alta',TO_DATE('04/10/2021','DD/MM/YYYY'),TO_DATE('11/10/2021','DD/MM/YYYY'),'LT-0220013',0011020103009,'LT-0220009',1,'BP-0010209');
insert into Fermentazione values (8,'Bassa',TO_DATE('04/11/2021','DD/MM/YYYY'),TO_DATE('11/11/2021','DD/MM/YYYY'),'LT-0220014',0011020103010,'LT-0220010',1,'BP-0010210');
insert into Fermentazione values (9,'Alta',TO_DATE('04/12/2021','DD/MM/YYYY'),TO_DATE('11/12/2021','DD/MM/YYYY'),'LT-0220004',0011020103011,'LT-0220011',1,'BP-0010211');
insert into Fermentazione values (12,'Bassa',TO_DATE('04/01/2022','DD/MM/YYYY'),TO_DATE('11/01/2022','DD/MM/YYYY'),'LT-0220007',0011020103012,'LT-0220012',1,'BP-0010212');
insert into Fermentazione values (14,'Alta',TO_DATE('04/02/2022','DD/MM/YYYY'),TO_DATE('11/02/2022','DD/MM/YYYY'),'LT-0220009',0011020103013,'LT-0220013',1,'BP-0010213');
insert into Fermentazione values (15,'Bassa',TO_DATE('04/02/2022','DD/MM/YYYY'),TO_DATE('11/03/2022','DD/MM/YYYY'),'LT-0220013',0011020103014,'LT-0220014',1,'BP-0010214');
insert into Fermentazione values (2,'Bassa',TO_DATE('04/02/2022','DD/MM/YYYY'),TO_DATE('11/04/2022','DD/MM/YYYY'),'LT-0220014',0011020103015,'LT-0220015',1,'BP-0010215');


--VENDITA
insert into Vendita values ('VD--0220001','PT00-01','Assegno',TO_DATE('20/02/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220002','PT00-02','Bonifico',TO_DATE('20/03/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220003','PT00-03','Assegno',TO_DATE('20/04/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220004','PT00-04','Assegno',TO_DATE('20/05/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220005','PT00-05','Bonifico',TO_DATE('20/06/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220006','PT00-06','Assegno',TO_DATE('20/07/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220007','PT00-07','Bonifico',TO_DATE('20/08/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220008','PT00-08','Bonifico',TO_DATE('20/09/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220009','PT00-09','Assegno',TO_DATE('20/10/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220010','PT00-10','Bonifico',TO_DATE('20/11/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220011','PT00-11','Bonifico',TO_DATE('20/12/2021','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220012','PT00-12','Assegno',TO_DATE('20/01/2022','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220013','PT00-13','Assegno',TO_DATE('20/02/2022','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220014','PT00-14','Bonifico',TO_DATE('20/03/2022','DD/MM/YYYY'),0);
insert into Vendita values ('VD--0220015','PT00-15','Assegno',TO_DATE('20/04/2022','DD/MM/YYYY'),0);

--BIRRA VENDUTA
insert into BirraVenduta values ('BP-0010201','VD--0220001',0);
insert into BirraVenduta values ('BP-0010202','VD--0220002',0);
insert into BirraVenduta values ('BP-0010203','VD--0220003',0);
insert into BirraVenduta values ('BP-0010204','VD--0220004',0);
insert into BirraVenduta values ('BP-0010205','VD--0220005',0);
insert into BirraVenduta values ('BP-0010206','VD--0220006',0);
insert into BirraVenduta values ('BP-0010207','VD--0220007',0);
insert into BirraVenduta values ('BP-0010208','VD--0220008',0);
insert into BirraVenduta values ('BP-0010209','VD--0220009',0);
insert into BirraVenduta values ('BP-0010210','VD--0220010',0);
insert into BirraVenduta values ('BP-0010211','VD--0220011',0);
insert into BirraVenduta values ('BP-0010212','VD--0220012',0);
insert into BirraVenduta values ('BP-0010213','VD--0220013',0);
insert into BirraVenduta values ('BP-0010214','VD--0220014',0);
insert into BirraVenduta values ('BP-0010215','VD--0220015',0);