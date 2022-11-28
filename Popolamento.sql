--Fornitore

insert into Fornitore (pIVA,nome,citta,cap,via)
values (01223580554,'AURIAN SAS','Condom',32100,'5 Avenue de la Gare');

insert into Fornitore (pIVA,nome,citta,cap,via)
values (01223580604,'ASIA EUROPE TRADE','Liege',4000,'25 rue de Rotterdam');

insert into Fornitore (pIVA,nome,citta,cap,via)
values (01223530003,'E-SARDINIA ','Oristano',09170,'Via Santa Petronilla');


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
values (1845678901001,'Segale','MOUTERIJ DINGEMANS');

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1845678901001,'Mais','WEYERMANN');

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1845678901001,'Orzo','CRISP MALTING');

--Luppolo
--Classificazione go provato a cercare penso sia questa, 
--ovviamente non so se veritiera con la tipologia
insert into Luppolo (GTIN,classificazione,tipoLuppolo)
values (1425673421008,'Admiral','Amaricante');

insert into Luppolo (GTIN,classificazione,tipoLuppolo)
values (1234204840000,'Amarillo','Aromatizzante');

insert into Luppolo (GTIN,classificazione,tipoLuppolo)
values (1420901008001,'Magnum','Misto');

--Lievito
insert into Lievito (GTIN,tipoLievito)
values (1326778901002,'Saccharomyces Carlsbergensis');

insert into Lievito (GTIN,tipoLievito)
values (1940003420000,'Saccharomyces Cerevisiae');

insert into Lievito (GTIN,tipoLievito)
values (1120901008000,'Saccharomyces Carlsbergensis');

--LottoMateriaPrima

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L800-34',1845678901001,0123456,100.00);

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L642-04',1658392740899,0035245,400.00);

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L310-11',1002045632893,0573036,800.00);

--MaltoAcquistato
insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (1845678901001,'L800-34',1);

insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (01223520740009,'L303-04',02);

insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (01244530740009,'L002-22',01);

--LuppoloAcquistato
--Ho usato come codice lotto L100-01
insert into LuppoloAcquistato (GTIN,codiceLotto)
values (1845678901001,'L800-34');

insert into LuppoloAcquistato (GTIN,codiceLotto)
values (00032200055899,'L200-01');

insert into LuppoloAcquistato (GTIN,codiceLotto)
values (00011200077899,'L300-01');

--LievitoAcquistato
--Ho usato come codice lotto L100-02
insert into LievitoAcquistato (GTIN,codiceLotto)
values (1845678901001,'L800-34');

insert into LievitoAcquistato (GTIN,codiceLotto)
values (11117840000000,'L200-02');

insert into LievitoAcquistato (GTIN,codiceLotto)
values (11113520000000,'L300-02');

--MostoDolce
--numLotto è generato di DEFAULT
--idBollitore ho usato 04 poichè 01 è stato usato in Malto Acquistato
--Quantità Luppolo 50L;
-- GradiPlato 13°
--Quantità Mosto 40L

insert into MostoDolce (gtinLuppoloUsato,codLottoLuppolo,idBollitore,quantitaLuppoloUsato,gradiPlato,quantitaMosto)
values (1845678901001,'L800-34',1,50,13,40);

insert into MostoDolce (gtinLuppoloUsato,codLottoLuppolo,idBollitore,quantitaLuppoloUsato,gradiPlato,quantitaMosto)
values (00112233440000,'L020-01',05,100,7.5,115);

insert into MostoDolce (gtinLuppoloUsato,codLottoLuppolo,idBollitore,quantitaLuppoloUsato,gradiPlato,quantitaMosto)
values (00112233550000,'L030-01',04,170,8.5,75);

--BirraProdotta
--ssnSupervisore è uguale a quelli usati per Mastro birraio
insert into BirraProdotta (ssnSupervisore,numLottoMostoDolce,GTIN,nomeBirra,gradoAlcolico,colore,quantitaBirra)
values ('134009342',1,1845678901001,'Blanche',7.5,'Bionda',100);

insert into BirraProdotta (ssnSupervisore,numLottoMostoDolce,GTIN,nomeBirra,gradoAlcolico,colore,quantitaBirra)
values ('238009300',0002,00102030405000,'APA',6.5,'Scura',50);

insert into BirraProdotta (ssnSupervisore,numLottoMostoDolce,GTIN,nomeBirra,gradoAlcolico,colore,quantitaBirra)
values ('364386542',0003,00102030405060,'Ichnusa',5.5,'Bionda',200);

--Ammostamento
insert into Ammostamento (idBollitore,dataAmmostamento,gtinMalto,codLottoMalto,numLottoProdotto,quantitaMalto,quantitaAcqua)
values (0100,TO_DATE('01/01/2022','DD/MM/YYYY'),01010203050607,'L000-11',0100,100,300);

insert into Ammostamento (idBollitore,dataAmmostamento,gtinMalto,codLottoMalto,numLottoProdotto,quantitaMalto,quantitaAcqua)
values (0200,TO_DATE('01/02/2022','DD/MM/YYYY'),01020304050506,'L000-21',0200,200,500);

insert into Ammostamento (idBollitore,dataAmmostamento,gtinMalto,codLottoMalto,numLottoProdotto,quantitaMalto,quantitaAcqua)
values (0300,TO_DATE('01/03/2022','DD/MM/YYYY'),01080203053040,'L000-31',0300,300,800);


--Fermentazione
insert into Fermentazione (idFermentatore,dataInizio,numLottoFermentato,gtinLievitoUsato,codLottoLievito,numLottoBirraProdotta,dataFine,tipoFermentazione)
values (07,TO_DATE('02/02/2022','DD/MM/YYYY'),01500,0000011115304,'L000-51',101,TO_DATE('09/02/2022','DD/MM/YYYY'),'Alta');

insert into Fermentazione (idFermentatore,dataInizio,numLottoFermentato,gtinLievitoUsato,codLottoLievito,numLottoBirraProdotta,dataFine,tipoFermentazione)
values (08,TO_DATE('02/03/2022','DD/MM/YYYY'),01600,0000011116304,'L000-61',102,TO_DATE('09/03/2022','DD/MM/YYYY'),'Bassa');

insert into Fermentazione (idFermentatore,dataInizio,numLottoFermentato,gtinLievitoUsato,codLottoLievito,numLottoBirraProdotta,dataFine,tipoFermentazione)
values (09,TO_DATE('02/04/2022','DD/MM/YYYY'),01700,0000011117304,'L000-71',103,TO_DATE('09/04/2022','DD/MM/YYYY'),'Alta');

--PUB
--particellaCatastale 3141 esempio da internet
insert into PUB (particellaCatastale,nome,citta,via,cap)
values ('3141','Labyrint','Napoli','Via delle Rose 15',80038);

insert into PUB (particellaCatastale,nome,citta,via,cap)
values ('8121','Officina della Birra','Roma','Via Libertà 85',00042);

insert into PUB (particellaCatastale,nome,citta,via,cap)
values ('6191','Birrass','Milano','Via Crucis 8',20019);

--Vendita
insert into Vendita (codFattura,particellaCatastaleCliente,metodoPagamento,dataVendita)
values ('F08-01','3141','Carta di Credito',TO_DATE('12/02/2022','DD/MM/YYYY'));

insert into Vendita (codFattura,particellaCatastaleCliente,metodoPagamento,dataVendita)
values ('F08-02','8121','Carta di Credito',TO_DATE('12/03/2022','DD/MM/YYYY'));

insert into Vendita (codFattura,particellaCatastaleCliente,metodoPagamento,dataVendita)
values ('F08-03','6191','Contanti',TO_DATE('12/045/2022','DD/MM/YYYY'));

--BirraVenduta
insert into BirraVenduta (numLotto,codFattura,numFusti)
values (0801,'V0-1509',5);

insert into BirraVenduta (numLotto,codFattura,numFusti)
values (0802,'V0-1609',10);

insert into BirraVenduta (numLotto,codFattura,numFusti)
values (0803,'V0-1709',7);