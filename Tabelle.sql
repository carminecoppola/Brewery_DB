/*drop table Fornitore;
drop table MastroBirraio;
drop table Contenitore;
drop table OrdineApproviggionamento;
drop table MateriaPrima;
drop table Malto;
drop table Luppolo;
drop table Lievito;
drop table LottoMateriaPrima;
drop table MostoDolce;
drop table BirraProdotta;
drop table Ammostamento;
drop table Fermentazione;
drop table PUB;
drop table Vendita;
drop table BirraVenduta;
*/

CREATE TABLE Fornitore(
	GS1 				NUMBER NOT NULL, 
	nomeFornitore 		VARCHAR2(50) NOT NULL,
	citta 				CHAR(50) NOT NULL,
	cap 				CHAR(5) NOT NULL,
	via 				VARCHAR2(50),

	CONSTRAINT FORN_PK
		PRIMARY KEY(GS1)
);

CREATE TABLE MastroBirraio(
	ssn 				VARCHAR2(16) NOT NULL,
	nome 				CHAR(20) NOT NULL,
	cognome 			CHAR(20) NOT NULL,
	dataNascita 		DATE NOT NULL,
	dataAssunzione 		DATE NOT NULL,
	stipendio 			NUMBER NOT NULL CHECK(Stipendio >= 1000),
	
	CONSTRAINT MB_PK
		PRIMARY KEY(ssn)
);

CREATE TABLE Contenitore(
	idContenitore 		NUMBER NOT NULL,
	ssnResponsabile 	VARCHAR2(16),
	tipoContenitore 	CHAR(20) CHECK(tipoContenitore IN ('Bollitore' , 'Fermentatore')),
	capacitaLavorazione NUMBER,
	capacitaComplessiva NUMBER NOT NULL,
	potenza 			NUMBER NOT NULL,

	CONSTRAINT CONT_PK
		PRIMARY KEY(idContenitore),
	CONSTRAINT CONT_FK_MB
		FOREIGN KEY (ssnResponsabile) REFERENCES MastroBirraio(ssn) on delete cascade
);

CREATE TABLE OrdineApproviggionamento(
	gs1Fornitore 		NUMBER NOT NULL,
	dataRifornimento 	DATE NOT NULL,
	dataOrdine			DATE NOT NULL,
	codFattura 			NUMBER NOT NULL,
	metodoPagamento 	VARCHAR2(50) CHECK(metodoPagamento IN('Assegno','Bonifico')),
	numeroTracking 		VARCHAR2(50),

	CONSTRAINT OAPP_PK
		PRIMARY KEY(codFattura),
	CONSTRAINT OAPP_FK_FORN
		FOREIGN KEY(gs1Fornitore) REFERENCES Fornitore(GS1) on delete cascade
		
);

CREATE TABLE MateriaPrima(
	tipo 				VARCHAR2(50) CHECK(tipo IN('Malto','Luppolo','Lievito')), 
	nomeMatPrim			VARCHAR2(50),
	provenienza 		VARCHAR2(50),
	
	CONSTRAINT MAT_P_PK
		PRIMARY KEY(nomeMatPrim)
);

CREATE TABLE Malto(
	nomeMalto 			VARCHAR2(50) NOT NULL,
	cerealeMaltato 		VARCHAR2(50) NOT NULL CHECK(cerealeMaltato IN ('Orzo','Segale','Frumento','Mais')),

	CONSTRAINT MALT_PK 
		PRIMARY KEY(nomeMalto),
	CONSTRAINT MALT_PKFK
		FOREIGN KEY (nomeMalto) REFERENCES MateriaPrima(nomeMatPrim) on delete cascade
);

CREATE TABLE Luppolo(
	nomeLuppolo 		VARCHAR2(50) NOT NULL,
	classificazione 	VARCHAR2(50) NOT NULL CHECK(classificazione IN ('Amaricante','Aromatizzante','Misto')),
	
	CONSTRAINT LUPP_PK 
		PRIMARY KEY(nomeLuppolo),
	CONSTRAINT LUPP_PKFK
		FOREIGN KEY (nomeLuppolo) REFERENCES MateriaPrima(nomeMatPrim) on delete cascade

);

CREATE TABLE Lievito(
	nomeLievito 		VARCHAR2(50) NOT NULL CHECK (nomeLievito IN ('American Ale','Belgian Ale','English Ale','German Wheat','Irish Ale')),
	
	CONSTRAINT LIEV_PK 
		PRIMARY KEY(nomeLievito),
	CONSTRAINT LIEV_PKFK
		FOREIGN KEY(nomeLievito) REFERENCES MateriaPrima(nomeMatPrim) on delete cascade

);
		
CREATE TABLE LottoMateriaPrima(
	codLotto 			VARCHAR2(50) NOT NULL,
	codProdotto			NUMBER(4) NOT NULL,
	gs1Fornitore		NUMBER(9) NOT NULL,
	nomeMateriaPrima	VARCHAR2(50) CHECK(nomeMateriaPrima IN('Malto','Luppolo','Lievito')),
	codFattura 			NUMBER NOT NULL,
	prezzoAcquisto 		NUMBER NOT NULL,
	quantitaAcquistata 	NUMBER NOT NULL,
	dataScadenza		DATE NOT NULL,
	
	CONSTRAINT LMAT_P_PK
		PRIMARY KEY(codLotto,codProdotto,gs1Fornitore),
	CONSTRAINT LMAT_P_FK_MAT_P
		FOREIGN KEY (nomeMateriaPrima) REFERENCES MateriaPrima(nomeMatPrim) on delete cascade,
	CONSTRAINT LMAT_P_FK_OAPP
		FOREIGN KEY(codFattura) REFERENCES OrdineApproviggionamento(codFattura)	on delete cascade,
	CONSTRAINT LMAT_P_FK_FORN
		FOREIGN KEY(gs1Fornitore) REFERENCES Fornitore(GS1) on delete cascade
);


CREATE TABLE MostoDolce(
	numeroLotto 		NUMBER NOT NULL,
	codProdLuppUsato	NUMBER NOT NULL,
	gs1Fornitore		NUMBER(9) NOT NULL,
	codLotto		 	VARCHAR2(50) NOT NULL,
	dataAmmostamento 	DATE NOT NULL,
	quantitaLuppUsato 	NUMBER,
	gradiPlato 			NUMBER CHECK (gradiPlato > 0),
	quantitaMosto 		NUMBER CHECK (quantitaMosto > 0),
	
	CONSTRAINT MD_PK
		PRIMARY KEY(numeroLotto),
	CONSTRAINT MD_LUP_FK
		FOREIGN KEY(codProdLuppUsato,gs1Fornitore,codLotto) REFERENCES LottoMateriaPrima(codProdotto,gs1Fornitore,codLotto) on delete cascade
);

CREATE TABLE TipoBirra(
	GTIN 				NUMBER(13) NOT NULL,
	ssnSupervisore 		VARCHAR2(16) NOT NULL,
	nomeBirra 			VARCHAR2(50) NOT NULL,
	gradoAlcolico 		NUMBER NOT NULL CHECK(gradoAlcolico >= 0),
	colore 				VARCHAR2(30) CHECK (LOWER(colore) IN ('bionda','rossa','scura')),
	fustiMagazzino 		NUMBER NOT NULL,
	prezzoFusto			NUMBER NOT NULL,
	nomeMalto			VARCHAR2(50) NOT NULL,
	nomeLuppolo			VARCHAR2(50) NOT NULL,			
	nomeLievito			VARCHAR2(50) NOT NULL,

	CONSTRAINT TIPBIRR_PK
		PRIMARY KEY(GTIN),
	CONSTRAINT TIPBIRR_FK
		FOREIGN KEY(ssnSupervisore) REFERENCES MastroBirraio(ssn) on delete cascade,
	CONSTRAINT TIPBIRR_MALTO_FK
		FOREIGN KEY(nomeMalto) REFERENCES Malto(nomeMalto) on delete cascade,
	CONSTRAINT TIPBIRR_LUPP_FK
		FOREIGN KEY(nomeLuppolo) REFERENCES Luppolo(nomeLuppolo) on delete cascade,
	CONSTRAINT TIPBIRR_LIEV_FK
		FOREIGN KEY(nomeLievito) REFERENCES Lievito(nomeLievito) on delete cascade			

);

CREATE TABLE BirraProdotta(
	codLotto 			VARCHAR2(50),
	dataProduzione 		DATE NOT NULL, 	
	GTIN 				NUMBER(13) NOT NULL,
	numFustiProdotti 	NUMBER NOT NULL,
	
	CONSTRAINT BIRRP_PK
		PRIMARY KEY(codLotto),
	CONSTRAINT BIRRP_FK
		FOREIGN KEY(GTIN) REFERENCES TipoBirra(GTIN) on delete cascade
);

CREATE TABLE Ammostamento(
	idBollitore 		NUMBER NOT NULL,
	dataAmmostamento 	DATE NOT NULL,
	codProdottoMalto	NUMBER(4) NOT NULL,
	gs1Fornitore		NUMBER(9) NOT NULL,
	codLotto			VARCHAR2(50) NOT NULL, 
	numLottoProdotto 	NUMBER NOT NULL,
	quantitaMalto 		NUMBER NOT NULL CHECK(quantitaMalto > 0),
	quantitaAcqua 		NUMBER NOT NULL CHECK(quantitaAcqua > 0),
	
	CONSTRAINT AMM_PK
		PRIMARY KEY (idBollitore,dataAmmostamento),
	CONSTRAINT AMM_FK_LOTMP	
		FOREIGN KEY(codProdottoMalto,gs1Fornitore,codLotto) REFERENCES LottoMateriaPrima(codProdotto,gs1Fornitore,codLotto) on delete cascade,
	CONSTRAINT AMM_FKPK_CONT
		FOREIGN KEY(idBollitore) REFERENCES Contenitore(idContenitore) on delete cascade,
	CONSTRAINT AMM_FK_MSTDLC
		FOREIGN KEY(numLottoProdotto) REFERENCES MostoDolce(numeroLotto) on delete cascade
);

CREATE TABLE Fermentazione(
	idFermentatore 		NUMBER NOT NULL,
	tipoFermentazione 	VARCHAR2(50) CHECK(LOWER(tipoFermentazione) IN('alta','bassa')),
	numLottoBirraProd	VARCHAR2(50),
	dataInizioF 		DATE NOT NULL,
	dataFineF 			DATE NOT NULL,
	numLotFermentato 	NUMBER NOT NULL,
	codLottoMatPrim		VARCHAR2(50) NOT NULL, --Aggiungere a Relazionale
	codProdLievUsato	NUMBER(4) NOT NULL,
	gs1Fornit			NUMBER(9) NOT NULL,
	quantitaLievUsato 	NUMBER NOT NULL CHECK(quantitaLievUsato > 0),
	
	CONSTRAINT FERM_PK
		PRIMARY KEY (idFermentatore,dataInizioF),
	CONSTRAINT FERM_PKFK_CONT
		FOREIGN KEY(idFermentatore) REFERENCES Contenitore(idContenitore) on delete cascade,
	CONSTRAINT FERM_FK_MD
		FOREIGN KEY(numLotFermentato) REFERENCES MostoDolce(numeroLotto) on delete cascade,
	CONSTRAINT FERM_FK_LOTMATPRIM
		FOREIGN KEY(codLottoMatPrim,codProdLievUsato,gs1Fornit) REFERENCES LottoMateriaPrima(codLotto,codProdotto,gs1Fornitore) on delete cascade,
	CONSTRAINT FERM_FK_BIRRP
		FOREIGN KEY(numLottoBirraProd) REFERENCES BirraProdotta(codLotto) on delete cascade
);

CREATE TABLE PUB(
    particellaCatastale VARCHAR2(50) NOT NULL,
    nomePub				CHAR(50) NOT NULL,
    citta 				CHAR(50) NOT NULL,
    via 				VARCHAR2(50) NOT NULL,
    cap 				CHAR(5) NOT NULL,
	
	CONSTRAINT PUB_PK
		PRIMARY KEY(particellaCatastale)
);

CREATE TABLE Vendita(
    codFattura 			VARCHAR2(50) NOT NULL,
    partCatastaleCli	VARCHAR2(50),
	metodoPagamento 	VARCHAR2(50) CHECK(LOWER(metodoPagamento) IN('assegno','bonifico')),
	dataVendita 		DATE NOT NULL,
	ricavo				NUMBER,
	
	CONSTRAINT V_PK
		PRIMARY KEY(codFattura),
	CONSTRAINT V_FK_PUB
		FOREIGN KEY(partCatastaleCli) REFERENCES PUB(particellaCatastale) on delete cascade
);

CREATE TABLE BirraVenduta(
	codLotto 			VARCHAR2(50) NOT NULL,
	codFattura 			VARCHAR2(50), 
	numFusti 			NUMBER,
	
	CONSTRAINT BV_PK
		PRIMARY KEY(codLotto,codFattura),
	CONSTRAINT BV_PKFK1
		FOREIGN KEY(codLotto) REFERENCES BirraProdotta(codLotto) on delete cascade,
	CONSTRAINT BV_PKFK2
		FOREIGN KEY(codFattura) REFERENCES Vendita(codFattura) on delete cascade
);