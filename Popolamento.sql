--Fornitore

insert into Fornitore (pIVA,nome,citta,cap,via)
values (01223580554,'AURIAN SAS','Condom','32100','5 Avenue de la Gare');

insert into Fornitore (pIVA,nome,citta,cap,via)
values (01223580604,'ASIA EUROPE TRADE','Liege','4000','25 rue de Rotterdam');

insert into Fornitore (pIVA,nome,citta,cap,via)
values (01223530003,'E-SARDINIA ','Oristano','09170','Via Santa Petronilla');


--Mastro Birraio
--ssn è Americano (16 Alfanumerico) mentre quello Italiano (9 Numeri)

insert into MastroBirraio (ssn,nome,cognome,dataNascita,dataAssunzione,stipendio)
values ('134009342','Antonio','Mannoia',TO_DATE('10/04/1980','DD/MM/YYYY'),TO_DATE('21/05/2003','DD/MM/YYYY'),1600.00);

insert into MastroBirraio (ssn,nome,cognome,dataNascita,dataAssunzione,stipendio)
values ('238009300','Eva','Fognini',TO_DATE('15/01/1992','DD/MM/YYYY'),TO_DATE('06/02/2007','DD/MM/YYYY'),1450.00);

insert into MastroBirraio (ssn,nome,cognome,dataNascita,dataAssunzione,stipendio)
values ('364386542','Luigi','Folliero',TO_DATE('02/11/1989','DD/MM/YYYY'),TO_DATE('13/12/2009','DD/MM/YYYY'),1700.00);

--Contenitore
--id Generato di DEFAULT
--ssnResponsabile l'ho copiato uguale ai precedenti Mastri birrai poichè fa riferimento a quello
--Capacita espressa in Litri(L)
--Potenza espressa in Watt(W)


insert into Contenitore (ssnResponsabile,tipo,capacitaLavorazione,capacitaComplessiva,potenza)
values ('134009342','Bollitore',80,100,3000);

insert into Contenitore (ssnResponsabile,tipo,capacitaLavorazione,capacitaComplessiva,potenza)
values ('238009300','Fermentatore',450,500,4000);

insert into Contenitore (ssnResponsabile,tipo,capacitaLavorazione,capacitaComplessiva,potenza)
values ('364386542','Fermentatore',300,350,2500);

--OrdineApproviggionamento
--Il codice destinatario (codFattura) è un sistema composto da (7 alfanumerici)
--pIvaFornitore ho utilizzato le stesse di quelle presenti in fornitore

insert into OrdineApproviggionamento (codFattura,pIvaFornitore,dataRifornimento,metodoPagamento,numeroTracking)
values (0123456,01223580554,TO_DATE('15/01/2022','DD/MM/YYYY'),'Carta di Credito','US154022090IT');

insert into OrdineApproviggionamento (codFattura,pIvaFornitore,dataRifornimento,metodoPagamento,numeroTracking)
values (0254219,01223580604,TO_DATE('01/02/2021','DD/MM/YYYY'),'Carta di Credito','FR624620036IT');

insert into OrdineApproviggionamento (codFattura,pIvaFornitore,dataRifornimento,metodoPagamento,numeroTracking)
values (0811459,01223530003,TO_DATE('31/05/2020','DD/MM/YYYY'),'Carta di Credito','BG671009596IT');


--MateriaPrima
--GTIN utilizzato generatore casuale
--Provenienza utilizzata la stessa dei fornitori

insert into MateriaPrima (GTIN,provenienza)
values (1845678901001,'Francia');

insert into MateriaPrima (GTIN,provenienza)
values (1425673421008,'Belgio');

insert into MateriaPrima (GTIN,provenienza)
values (1326778901002,'Italia');

--Malto
--GTIN diversi da materia prima
--PILSNER BELGA–MOUTERIJ DINGEMANS (PILSNER) -> Belgio
--WEYERMANN(PALE ALE) -> Germania
--VIENNA – CRISP MALTING (VIENNA) -> Gran Bretagna

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1942678901001,'Segale','MOUTERIJ DINGEMANS (PILSNER)');

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1238400004204,'Mais','WEYERMANN(PALE ALE)');

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1528458901003,'Orzo','CRISP MALTING (VIENNA)');

--Luppolo
--Classificazione go provato a cercare penso sia questa, 
--ovviamente non so se veritiera con la tipologia
insert into Luppolo (GTIN,classificazione,tipoLuppolo)
values (1940008901001,'Admiral','Amaricante');

insert into Luppolo (GTIN,classificazione,tipoLuppolo)
values (1234204840000,'Amarillo','Aromatizzante');

insert into Luppolo (GTIN,classificazione,tipoLuppolo)
values (1420901008001,'Magnum','Misto');

--Lievito
insert into Lievito (GTIN,tipoLievito)
values (1484023420000,'Saccharomyces Carlsbergensis');

insert into Lievito (GTIN,tipoLievito)
values (1940003420000,'Saccharomyces Cerevisiae');

insert into Lievito (GTIN,tipoLievito)
values (1120901008000,'Saccharomyces Carlsbergensis');

--LottoMateriaPrima

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L800-34',1453420252070,0457736,100.00);

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L642-04',1658392740899,0035245,400.00);

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L310-11',1002045632893,0573036,800.00);

--MaltoAcquistato
insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (01242392740899,'L600-01',01);

insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (01223520740009,'L303-04',02);

insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (01244530740009,'L002-22',01);

--LuppoloAcquistato
insert into LuppoloAcquistato (GTIN,codiceLotto)
values (00042300040899,'L100-01');

insert into LuppoloAcquistato (GTIN,codiceLotto)
values (00032200055899,'L200-01');

insert into LuppoloAcquistato (GTIN,codiceLotto)
values (00011200077899,'L300-01');

--LievitoAcquistato
insert into LievitoAcquistato (GTIN,codiceLotto)
values (11112340000000,'L100-02');

insert into LievitoAcquistato (GTIN,codiceLotto)
values (11117840000000,'L200-02');

insert into LievitoAcquistato (GTIN,codiceLotto)
values (11113520000000,'L300-02');