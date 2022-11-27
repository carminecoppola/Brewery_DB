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
--PILSNER BELGA–MOUTERIJ DINGEMANS (PILSNER) -> Belgio
--WEYERMANN(PALE ALE) -> Germania
--VIENNA – CRISP MALTING (VIENNA) -> Gran Bretagna

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1942678901001,'Segale','MOUTERIJ DINGEMANS (PILSNER)');

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1238400004204,'Mais','WEYERMANN(PALE ALE)');

insert into Malto (GTIN,cerealeMaltato,nomeMalto)
values (1528458901003,'Orzo','CRISP MALTING (VIENNA)');

--