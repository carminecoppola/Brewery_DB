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
values (0123456,01223580554,TO_DATE('15/01/2022','DD/MM/YYYY'),'Visa','US154022090IT');

insert into OrdineApproviggionamento (codFattura,pIvaFornitore,dataRifornimento,metodoPagamento,numeroTracking)
values (0254219,01223580604,TO_DATE('01/02/2021','DD/MM/YYYY'),'Visa','FR624620036IT');

insert into OrdineApproviggionamento (codFattura,pIvaFornitore,dataRifornimento,metodoPagamento,numeroTracking)
values (0811459,01223530003,TO_DATE('31/05/2020','DD/MM/YYYY'),'Paypal','BG671009596IT');


--MateriaPrima
--GTIN utilizzato generatore casuale
--Provenienza utilizzata la stessa dei fornitori

insert into MateriaPrima (GTIN,tipo)
values (1845678901001,'Malto');

insert into MateriaPrima (GTIN,tipo)
values (1425673421008,'Luppolo');

insert into MateriaPrima (GTIN,tipo)
values (1326778901002,'Lievito');


--Malto
--GTIN diversi da materia prima
--PILSNER BELGA–MOUTERIJ DINGEMANS (PILSNER) -> Belgio
--WEYERMANN(PALE ALE) -> Germania
--VIENNA – CRISP MALTING (VIENNA) -> Gran Bretagna

insert into Malto (GTIN,cerealeMaltato,nomeMalto,quantitaMagazzino,provenienza)
values (1845678901001,'Segale','MOUTERIJ DINGEMANS',100,'Belgio');

/*insert into Malto (GTIN,cerealeMaltato,nomeMalto,quantitaMagazzino,provenienza)
values (1845678901001,'Mais','WEYERMANN',200,'Germania');

insert into Malto (GTIN,cerealeMaltato,nomeMalto,quantitaMagazzino,provenienza)
values (1845678901001,'Orzo','CRISP MALTING',300,'Gran Bretagna');*/

--Luppolo
--Classificazione go provato a cercare penso sia questa, 
--ovviamente non so se veritiera con la tipologia
insert into Luppolo (GTIN,classificazione,tipoLuppolo,quantitaMagazzino,provenienza)
values (1425673421008,'Admiral','Amaricante',100,'Belgio');

/*insert into Luppolo (GTIN,classificazione,tipoLuppolo,quantitaMagazzino,provenienza)
values (1425673421008,'Amarillo','Aromatizzante',200,'Germania');

insert into Luppolo (GTIN,classificazione,tipoLuppolo,quantitaMagazzino,provenienza)
values (1425673421008,'Magnum','Misto',300,'Gran Bretagna');*/

--Lievito
insert into Lievito (GTIN,tipoLievito,quantitaMagazzino,provenienza)
values (1326778901002,'Saccharomyces Carlsbergensis',100,'Belgio');

/*insert into Lievito (GTIN,classificazione,tipoLievito,quantitaMagazzino,provenienza)
values (1326778901002,'Saccharomyces Cerevisiae',200,'Germania');

insert into Lievito (GTIN,classificazione,tipoLievito,quantitaMagazzino,provenienza)
values (1326778901002,'Saccharomyces Carlsbergensis',300,'Gran Bretagna');*/

--LottoMateriaPrima

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L800-34',1845678901001,0123456,100.00);

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L642-04',1425673421008,0254219,400.00);

insert into LottoMateriaPrima (codiceLotto,GTIN,codFattura,prezzoAcquisto)
values ('L310-11',1326778901002,0811459,800.00);

--MaltoAcquistato
insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (1845678901001,'L800-34',1);

insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (1425673421008,'L642-04',NULL);

insert into MaltoAcquistato (GTIN,codiceLotto,idBollitore)
values (1326778901002,'L310-11',NULL);

--LuppoloAcquistato
--Ho usato come codice lotto L100-01
insert into LuppoloAcquistato (GTIN,codiceLotto)
values (1845678901001,'L800-34');

insert into LuppoloAcquistato (GTIN,codiceLotto)
values (1425673421008,'L642-04');

insert into LuppoloAcquistato (GTIN,codiceLotto)
values (1326778901002,'L310-11');

--LievitoAcquistato
--Ho usato come codice lotto L100-02
insert into LievitoAcquistato (GTIN,codiceLotto)
values (1845678901001,'L800-34');

insert into LievitoAcquistato (GTIN,codiceLotto)
values (1425673421008,'L642-04');

insert into LievitoAcquistato (GTIN,codiceLotto)
values (1326778901002,'L310-11');

--MostoDolce
--numLotto è generato di DEFAULT
--idBollitore ho usato 04 poichè 01 è stato usato in Malto Acquistato
--Quantità Luppolo 50L;
-- GradiPlato 13°
--Quantità Mosto 40L

insert into MostoDolce (gtinLuppoloUsato,codLottoLuppolo,idBollitore,quantitaLuppoloUsato,gradiPlato,quantitaMosto)
values (1845678901001,'L800-34',1,50,13,40);

insert into MostoDolce (gtinLuppoloUsato,codLottoLuppolo,idBollitore,quantitaLuppoloUsato,gradiPlato,quantitaMosto)
values (1425673421008,'L642-04',1,100,7.5,115);

insert into MostoDolce (gtinLuppoloUsato,codLottoLuppolo,idBollitore,quantitaLuppoloUsato,gradiPlato,quantitaMosto)
values (1326778901002,'L310-11',1,170,8.5,75);

--BirraProdotta
--ssnSupervisore è uguale a quelli usati per Mastro birraio
insert into BirraProdotta (ssnSupervisore,numLottoMostoDolce,GTIN,nomeBirra,gradoAlcolico,colore,quantitaBirra)
values ('134009342',1,1845678901001,'Blanche',7.5,'Bionda',100);

insert into BirraProdotta (ssnSupervisore,numLottoMostoDolce,GTIN,nomeBirra,gradoAlcolico,colore,quantitaBirra)
values ('238009300',2,1425673421008,'APA',6.5,'Scura',50);

insert into BirraProdotta (ssnSupervisore,numLottoMostoDolce,GTIN,nomeBirra,gradoAlcolico,colore,quantitaBirra)
values ('364386542',3,1326778901002,'Ichnusa',5.5,'Bionda',200);

--Ammostamento
insert into Ammostamento (idBollitore,dataAmmostamento,gtinMalto,codLottoMalto,numLottoProdotto,quantitaMalto,quantitaAcqua)
values (1,TO_DATE('01/01/2022','DD/MM/YYYY'),1845678901001,'L800-34',1,100,300);

insert into Ammostamento (idBollitore,dataAmmostamento,gtinMalto,codLottoMalto,numLottoProdotto,quantitaMalto,quantitaAcqua)
values (1,TO_DATE('01/02/2022','DD/MM/YYYY'),1425673421008,'L642-04',1,200,500);

insert into Ammostamento (idBollitore,dataAmmostamento,gtinMalto,codLottoMalto,numLottoProdotto,quantitaMalto,quantitaAcqua)
values (1,TO_DATE('01/03/2022','DD/MM/YYYY'),1326778901002,'L310-11',1,300,800);


--Fermentazione
insert into Fermentazione (idFermentatore,dataInizio,numLottoFermentato,gtinLievitoUsato,codLottoLievito,numLottoBirraProdotta,dataFine,tipoFermentazione)
values (2,TO_DATE('02/02/2022','DD/MM/YYYY'),2,1845678901001,'L800-34',1,TO_DATE('09/02/2022','DD/MM/YYYY'),'Alta');

insert into Fermentazione (idFermentatore,dataInizio,numLottoFermentato,gtinLievitoUsato,codLottoLievito,numLottoBirraProdotta,dataFine,tipoFermentazione)
values (2,TO_DATE('02/03/2022','DD/MM/YYYY'),2,1425673421008,'L642-04',NULL,TO_DATE('09/03/2022','DD/MM/YYYY'),'Bassa');

insert into Fermentazione (idFermentatore,dataInizio,numLottoFermentato,gtinLievitoUsato,codLottoLievito,numLottoBirraProdotta,dataFine,tipoFermentazione)
values (3,TO_DATE('02/04/2022','DD/MM/YYYY'),2,1326778901002,'L310-11',NULL,TO_DATE('09/04/2022','DD/MM/YYYY'),'Alta');

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
values ('F08-01','3141','Visa',TO_DATE('12/02/2022','DD/MM/YYYY'));

insert into Vendita (codFattura,particellaCatastaleCliente,metodoPagamento,dataVendita)
values ('F08-02','8121','MasterCard',TO_DATE('12/03/2022','DD/MM/YYYY'));

insert into Vendita (codFattura,particellaCatastaleCliente,metodoPagamento,dataVendita)
values ('F08-03','6191','Paypal',TO_DATE('12/04/2022','DD/MM/YYYY'));

--BirraVenduta
insert into BirraVenduta (numLotto,codFattura,numFusti)
values (1,'F08-01',5);

insert into BirraVenduta (numLotto,codFattura,numFusti)
values (1,'F08-02',10);

insert into BirraVenduta (numLotto,codFattura,numFusti)
values (1,'F08-03',7);