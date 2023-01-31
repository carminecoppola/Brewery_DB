--FORNITORE
insert into Fornitore values (000123011,'AURIAN SAS','Condom','32100','5 Avenue de la Gare');
insert into Fornitore values (000123012,'ASIA EUROPE TRADE','Liege','4000','25 rue de Rotterdam');
insert into Fornitore values (000123013,'E-SARDINIA ','Oristano','09170','Via Santa Petronilla 15');
insert into Fornitore values (000123014,'NOSTRALE','Milano','20157','Via G. Ungaretti 23');
insert into Fornitore values (000123015,'PRATOROSSO','Milano','20107','Cascina Gaita 5');
insert into Fornitore values (000123016,'MARCONI','Novara','30040','5 Avenue de la Gare');
insert into Fornitore values (000123017,'BRASSERIE DE BRUNEHAUT SA','Brunehaut','7623','17 rue des Panneries');
insert into Fornitore values (000123018,'SWISS CHIPS GMBH','Schneisingen','5425','4 Schulstrasse');
insert into Fornitore values (000123019,'RESONE','Paris','75008','1 Rue De Stockholm');
insert into Fornitore values (000123010,'VETRARIA','Savignano Sul Rubicone','47039','Via Emilia Est 23');
insert into Fornitore values (010123011,'BROUWERIJ DE FENIKS CVBA','Heule','8501','138 Mellestraat');
insert into Fornitore values (010123012,'FLECKS BRAUHAUS TECHNIK GMBH ','Frohnleiten','8130','Rothleiten 64');
insert into Fornitore values (010123013,'KURSK BREWERY, LLC','Kursk','30502','Magistralny 18');
insert into Fornitore values (010123014,'BEERINBA DI BARBORA','Vigevano','27029','Via Carrobbio 18');
insert into Fornitore values (010123015,'DE-GUSTAMI','Milano','20131','Via Vallazze 95');

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
insert into MateriaPrima values ('Malto','Pale Ale Malt','Regno Unito');
insert into MateriaPrima values ('Lievito','American Ale','Regno Unito');
insert into MateriaPrima values ('Luppolo','Cascade','Belgio');
insert into MateriaPrima values ('Malto','Vienna Malt','Regno Unito');
insert into MateriaPrima values ('Lievito','Belgian Ale','Scozia');
insert into MateriaPrima values ('Lievito','English Ale','Italia');
insert into MateriaPrima values ('Malto','Munich Malt','Belgio');
insert into MateriaPrima values ('Luppolo','Chinook','USA');
insert into MateriaPrima values ('Luppolo','Columbus','Scozia');
insert into MateriaPrima values ('Malto','Pilsner Malt','USA');
insert into MateriaPrima values ('Luppolo','Centennial','Italia');
insert into MateriaPrima values ('Luppolo','Simcoe','Belgio');
insert into MateriaPrima values ('Lievito','German Wheat','USA');
insert into MateriaPrima values ('Lievito','Irish Ale','Italia');
insert into MateriaPrima values ('Malto','Wheat Malt','Scozia');


--MALTO
insert into Malto values ('Pale Ale Malt','Orzo');
insert into Malto values ('Vienna Malt','Segale');
insert into Malto values ('Munich Malt','Mais');
insert into Malto values ('Pilsner Malt','Frumento');
insert into Malto values ('Wheat Malt','Orzo');


--LUPPOLO
insert into Luppolo values ('Cascade','Amaricante');
insert into Luppolo values ('Chinook','Aromatizzante');
insert into Luppolo values ('Columbus','Misto');
insert into Luppolo values ('Centennial','Amaricante');
insert into Luppolo values ('Simcoe','Aromatizzante');

--LIEVITO
insert into Lievito values ('American Ale');
insert into Lievito values ('Belgian Ale');
insert into Lievito values ('English Ale');
insert into Lievito values ('German Wheat');
insert into Lievito values ('Irish Ale');

--TIPI DI BIRRA
insert into TipoBirra values (1001,'IT0011220','Stout',8.5,'Scura',0,100.00 ,        'Pale Ale Malt','Cascade','American Ale');
insert into TipoBirra values (1002,'IT0011221','Chimay Blanche',9,'Bionda',3,110.00 ,'Vienna Malt','Chinook','Belgian Ale');
insert into TipoBirra values (1003,'IT0011222','Lindemans',9,'Rossa',2,75.00 ,       'Munich Malt','Columbus','English Ale');
insert into TipoBirra values (1004,'IT0011223','Brown Ale',8.5,'Scura',1,100.00 ,    'Pilsner Malt','Centennial','German Wheat');
insert into TipoBirra values (1005,'IT0011224','Lager',7,'Bionda',0,90.00 ,          'Wheat Malt','Simcoe','Irish Ale');
insert into TipoBirra values (1006,'IT0011225','Budweiser',5,'Bionda',0,90.00 ,          'Pale Ale Malt','Simcoe','Irish Ale');
insert into TipoBirra values (1007,'IT0011226','Stout',8,'Scura',0,100.00 ,          'Pale Ale Malt','Cascade','American Ale');
insert into TipoBirra values (1008,'IT0011227','Trappistes Rochefort',9,'Bionda',3,110.00 ,'Pilsner Malt','Chinook','Belgian Ale');
insert into TipoBirra values (1009,'IT0011228','Newcastle Brown Ale',9,'Rossa',2,55.00 ,       'Munich Malt','Columbus','English Ale');
insert into TipoBirra values (1010,'IT0011229','Brown Ale',3.5,'Scura',1,250.00 ,    'Pilsner Malt','Centennial','Belgian Ale');
insert into TipoBirra values (1011,'IT0011230','Spaten',7,'Bionda',0,90.00 ,          'Wheat Malt','Simcoe','Irish Ale');
insert into TipoBirra values (1012,'IT0011231','Lindemans',4,'Bionda',0,90.00 ,      'Pale Ale Malt','Simcoe','Irish Ale');
insert into TipoBirra values (1013,'IT0011232','Hoegaarden Dark',8,'Scura',0,250.00 ,          'Pale Ale Malt','Cascade','American Ale');
insert into TipoBirra values (1014,'IT0011233','Franziskaner',9,'Bionda',3,110.00 ,'Vienna Malt','Chinook','Belgian Ale');
insert into TipoBirra values (1015,'IT0011234','Paulaner',9,'Rossa',2,55.00 ,       'Munich Malt','Columbus','English Ale');
--C'è un errore

--ORDINE APPROVVIGGIONAMENTO
insert into OrdineApproviggionamento values (000123011,TO_DATE('09/01/2021','DD/MM/YYYY'),TO_DATE('01/01/2021','DD/MM/YYYY'),1000550,'Bonifico','SP-RT-0051-01');
insert into OrdineApproviggionamento values (000123012,TO_DATE('07/02/2021','DD/MM/YYYY'),TO_DATE('10/03/2021','DD/MM/YYYY'),1000551,'Assegno','SP-RT-0051-02');
insert into OrdineApproviggionamento values (000123013,TO_DATE('15/03/2021','DD/MM/YYYY'),TO_DATE('01/04/2021','DD/MM/YYYY'),1000552,'Bonifico','SP-RT-0051-03');
insert into OrdineApproviggionamento values (000123014,TO_DATE('02/04/2021','DD/MM/YYYY'),TO_DATE('01/05/2021','DD/MM/YYYY'),1000553,'Assegno','SP-RT-0051-04');
insert into OrdineApproviggionamento values (000123015,TO_DATE('15/04/2021','DD/MM/YYYY'),TO_DATE('01/06/2021','DD/MM/YYYY'),1000554,'Bonifico','SP-RT-0051-05');
insert into OrdineApproviggionamento values (000123016,TO_DATE('15/05/2021','DD/MM/YYYY'),TO_DATE('01/07/2021','DD/MM/YYYY'),1000555,'Bonifico','SP-RT-0051-06');
insert into OrdineApproviggionamento values (000123017,TO_DATE('29/06/2021','DD/MM/YYYY'),TO_DATE('01/08/2021','DD/MM/YYYY'),1000556,'Bonifico','SP-RT-0051-07');
insert into OrdineApproviggionamento values (000123018,TO_DATE('01/08/2021','DD/MM/YYYY'),TO_DATE('01/09/2021','DD/MM/YYYY'),1000557,'Assegno','SP-RT-0051-08');
insert into OrdineApproviggionamento values (000123019,TO_DATE('01/09/2021','DD/MM/YYYY'),TO_DATE('01/10/2021','DD/MM/YYYY'),1000558,'Assegno','SP-RT-0051-09');
insert into OrdineApproviggionamento values (000123010,TO_DATE('15/09/2021','DD/MM/YYYY'),TO_DATE('01/11/2021','DD/MM/YYYY'),1000559,'Bonifico','SP-RT-0051-10');
insert into OrdineApproviggionamento values (010123011,TO_DATE('29/09/2021','DD/MM/YYYY'),TO_DATE('01/12/2021','DD/MM/YYYY'),1000510,'Assegno','SP-RT-0051-11');
insert into OrdineApproviggionamento values (010123012,TO_DATE('01/11/2021','DD/MM/YYYY'),TO_DATE('01/01/2022','DD/MM/YYYY'),1000511,'Bonifico','SP-RT-0051-12');
insert into OrdineApproviggionamento values (010123013,TO_DATE('01/12/2021','DD/MM/YYYY'),TO_DATE('01/02/2022','DD/MM/YYYY'),1000512,'Bonifico','SP-RT-0051-13');
insert into OrdineApproviggionamento values (010123014,TO_DATE('15/01/2022','DD/MM/YYYY'),TO_DATE('01/03/2022','DD/MM/YYYY'),1000513,'Assegno','SP-RT-0051-14');
insert into OrdineApproviggionamento values (010123015,TO_DATE('15/02/2022','DD/MM/YYYY'),TO_DATE('01/04/2022','DD/MM/YYYY'),1000514,'Bonifico','SP-RT-0051-15');



--LOTTO MATERIA PRIMA
insert into LottoMateriaPrima values ('LT-0220001',1001,000123011,'Pale Ale Malt',1000550,   200.99,9,TO_DATE('01/03/2023','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220002',1002,000123012,'American Ale',1000551, 100.99,1,TO_DATE('05/04/2023','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220003',1003,000123013,'Cascade',1000552, 200.99,4,TO_DATE('23/05/2023','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220004',1004,000123014,'Vienna Malt',1000553,   100.99,2,TO_DATE('15/06/2023','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220005',1005,000123015,'Belgian Ale',1000554, 200.99,2,TO_DATE('10/07/2023','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220006',1006,000123016,'English Ale',1000555, 150.99,7,TO_DATE('04/08/2024','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220007',1007,000123017,'Munich Malt',1000556,   150.99,1,TO_DATE('03/09/2024','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220008',1008,000123018,'Chinook',1000557, 200.99,1,TO_DATE('10/09/2024','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220009',1009,000123019,'Columbus',1000558, 250.99,4,TO_DATE('18/09/2024','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220010',1010,000123010,'Pilsner Malt',1000559,   220.99,1,TO_DATE('01/10/2024','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220011',1011,000123011,'Centennial',1000510, 200.99,1,TO_DATE('11/10/2025','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220012',1012,000123012,'Simcoe',1000511, 175.99,3,TO_DATE('20/11/2025','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220013',1013,000123013,'German Wheat',1000512,   160.99,8,TO_DATE('15/12/2025','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220014',1014,000123014,'Irish Ale',1000513, 200.99,2,TO_DATE('15/01/2025','DD/MM/YYYY'));
insert into LottoMateriaPrima values ('LT-0220015',1015,000123015,'Wheat Malt',1000514, 120.99,3,TO_DATE('27/02/2025','DD/MM/YYYY'));


--MOSTO DOLCE
insert into MostoDolce values (0102001,1001,000123011,'LT-0220001',TO_DATE('01/02/2021','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102002,1002,000123012,'LT-0220002',TO_DATE('01/03/2021','DD/MM/YYYY'),3,50,1);
insert into MostoDolce values (0102003,1003,000123013,'LT-0220003',TO_DATE('01/04/2021','DD/MM/YYYY'),1,50,1);
insert into MostoDolce values (0102004,1004,000123014,'LT-0220004',TO_DATE('01/05/2021','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102005,1005,000123015,'LT-0220005',TO_DATE('01/06/2021','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102006,1006,000123016,'LT-0220006',TO_DATE('01/07/2021','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102007,1007,000123017,'LT-0220007',TO_DATE('01/08/2021','DD/MM/YYYY'),3,50,1);
insert into MostoDolce values (0102008,1008,000123018,'LT-0220008',TO_DATE('01/09/2021','DD/MM/YYYY'),1,50,1);
insert into MostoDolce values (0102009,1009,000123019,'LT-0220009',TO_DATE('01/10/2021','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102010,1010,000123010,'LT-0220010',TO_DATE('01/11/2021','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102011,1011,000123011,'LT-0220011',TO_DATE('01/12/2021','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102012,1012,000123012,'LT-0220012',TO_DATE('01/01/2022','DD/MM/YYYY'),3,50,1);
insert into MostoDolce values (0102013,1013,000123013,'LT-0220013',TO_DATE('01/02/2022','DD/MM/YYYY'),1,50,1);
insert into MostoDolce values (0102014,1014,000123014,'LT-0220014',TO_DATE('01/03/2022','DD/MM/YYYY'),2,50,1);
insert into MostoDolce values (0102015,1015,000123015,'LT-0220015',TO_DATE('01/04/2022','DD/MM/YYYY'),2,50,1);


--AMMOSTAMENTO
insert into Ammostamento values (1,TO_DATE('02/02/2021','DD/MM/YYYY'),1001,000123011,'LT-0220001',0102001,1,1);
insert into Ammostamento values (3,TO_DATE('02/03/2021','DD/MM/YYYY'),1002,000123012,'LT-0220002',0102002,1,1);
insert into Ammostamento values (5,TO_DATE('02/04/2021','DD/MM/YYYY'),1003,000123013,'LT-0220003',0102003,1,1);
insert into Ammostamento values (6,TO_DATE('02/05/2021','DD/MM/YYYY'),1004,000123014,'LT-0220004',0102004,1,1);
insert into Ammostamento values (7,TO_DATE('02/06/2021','DD/MM/YYYY'),1005,000123015,'LT-0220005',0102005,1,1);
insert into Ammostamento values (10,TO_DATE('02/07/2021','DD/MM/YYYY'),1006,000123016,'LT-0220006',0102006,1,1);
insert into Ammostamento values (11,TO_DATE('02/08/2021','DD/MM/YYYY'),1007,000123017,'LT-0220007',0102007,1,1);
insert into Ammostamento values (13,TO_DATE('02/09/2021','DD/MM/YYYY'),1008,000123018,'LT-0220008',0102008,1,1);


--BIRRA PRODOTTA
insert into BirraProdotta values ('BP-0010201',TO_DATE('15/02/2021','DD/MM/YYYY'),1001,4);
insert into BirraProdotta values ('BP-0010202',TO_DATE('15/03/2021','DD/MM/YYYY'),1002,6);
insert into BirraProdotta values ('BP-0010203',TO_DATE('15/04/2021','DD/MM/YYYY'),1003,7);
insert into BirraProdotta values ('BP-0010204',TO_DATE('15/05/2021','DD/MM/YYYY'),1004,3);
insert into BirraProdotta values ('BP-0010205',TO_DATE('15/06/2021','DD/MM/YYYY'),1005,2);
insert into BirraProdotta values ('BP-0010206',TO_DATE('15/02/2022','DD/MM/YYYY'),1006,4);
insert into BirraProdotta values ('BP-0010207',TO_DATE('15/03/2022','DD/MM/YYYY'),1007,6);
insert into BirraProdotta values ('BP-0010208',TO_DATE('15/04/2022','DD/MM/YYYY'),1008,7);
insert into BirraProdotta values ('BP-0010209',TO_DATE('15/05/2022','DD/MM/YYYY'),1009,3);
insert into BirraProdotta values ('BP-0010210',TO_DATE('15/06/2023','DD/MM/YYYY'),1010,2);
insert into BirraProdotta values ('BP-0010211',TO_DATE('15/02/2023','DD/MM/YYYY'),1011,4);
insert into BirraProdotta values ('BP-0010212',TO_DATE('15/03/2023','DD/MM/YYYY'),1012,6);
insert into BirraProdotta values ('BP-0010213',TO_DATE('15/04/2023','DD/MM/YYYY'),1013,7);
insert into BirraProdotta values ('BP-0010214',TO_DATE('15/05/2023','DD/MM/YYYY'),1014,3);
insert into BirraProdotta values ('BP-0010215',TO_DATE('15/06/2023','DD/MM/YYYY'),1015,2);


--FERMENTAZIONE
insert into Fermentazione values (2,'Alta',TO_DATE('04/02/2021','DD/MM/YYYY'),TO_DATE('11/02/2021','DD/MM/YYYY'),'LT-0220004',0011020103001,'LT-0220001',1,'BP-0010201');
insert into Fermentazione values (4,'Bassa',TO_DATE('04/03/2021','DD/MM/YYYY'),TO_DATE('11/03/2021','DD/MM/YYYY'),'LT-0220007',0011020103002,'LT-0220002',1,'BP-0010202');
insert into Fermentazione values (8,'Alta',TO_DATE('04/04/2021','DD/MM/YYYY'),TO_DATE('11/04/2021','DD/MM/YYYY'),'LT-0220009',0011020103003,'LT-0220003',1,'BP-0010203');
insert into Fermentazione values (9,'Alta',TO_DATE('04/05/2021','DD/MM/YYYY'),TO_DATE('11/05/2021','DD/MM/YYYY'),'LT-0220013',0011020103004,'LT-0220004',1,'BP-0010204');
insert into Fermentazione values (12,'Bassa',TO_DATE('04/06/2021','DD/MM/YYYY'),TO_DATE('11/06/2021','DD/MM/YYYY'),'LT-0220014',0011020103005,'LT-0220005',1,'BP-0010205');


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

