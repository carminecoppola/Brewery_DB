

-- 1) Il primo trigger controlla che la quantità di malto utilizzato per l'ammostamento sia disponibile
--        tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità maggiore di
--        quella che abbiamo in stock

     CREATE OR REPLACE TRIGGER Check_scorte_malto  
        BEFORE INSERT ON Ammostamento               
        FOR EACH ROW
        DECLARE
            notEnoughMalt EXCEPTION;
            BUYED NUMBER;  
            USED NUMBER;    
        BEGIN
            SELECT totacq INTO BUYED
            FROM (
                    SELECT L.codProdotto, L.gs1Fornitore,SUM(quantitaAcquistata) totacq
                    FROM LottoMateriaPrima L
                    WHERE L.codProdotto = :new.codProdottomalto AND L.gs1Fornitore = :new.gs1Fornitore
                    GROUP BY L.codProdotto, L.gs1Fornitore
            );

            SELECT totused INTO USED
            FROM (
                    SELECT A.codProdottoMalto, A.gs1Fornitore,SUM(quantitaMalto) totused
                    FROM Ammostamento A
                    WHERE A.codProdottomalto = :new.codProdottomalto AND A.gs1Fornitore = :new.gs1Fornitore
                    GROUP BY A.codProdottoMalto, A.gs1Fornitore
            );
            
        
            IF USED IS NOT NULL AND BUYED-USED < :new.quantitaMalto
                THEN RAISE notEnoughMalt;
            END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN 
            IF :new.quantitaMalto > BUYED THEN RAISE_APPLICATION_ERROR (-20108,'Malto in scorta insufficiente');
            END IF;
            WHEN notEnoughMalt THEN  RAISE_APPLICATION_ERROR (-20108,'Malto in scorta insufficiente');
    END;
/

/*  2) Il secondo trigger controlla che la quantità di luppolo utilizzato per l'ammostamento sia 
       disponibile tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità 
       maggiore di quella che abbiamo in stock*/

    CREATE OR REPLACE TRIGGER Check_scorte_luppolo  
        BEFORE INSERT ON MostoDolce               
        FOR EACH ROW
        DECLARE
            notEnoughLupp EXCEPTION;
            BUYED NUMBER;  
            USED NUMBER;    
        BEGIN
            SELECT totacq INTO BUYED
            FROM (
                    SELECT L.codProdotto, L.gs1Fornitore,SUM(quantitaAcquistata) totacq
                    FROM LottoMateriaPrima L
                    WHERE L.codProdotto = :new.codProdLuppUsato AND L.gs1Fornitore = :new.gs1Fornitore
                    GROUP BY L.codProdotto, L.gs1Fornitore
            );
            

            SELECT totused INTO USED
            FROM (
                    SELECT MD.codProdLuppUsato, MD.gs1Fornitore,SUM(quantitaLuppUsato) totused
                    FROM MostoDolce MD
                    WHERE MD.codProdLuppUsato = :new.codProdLuppUsato AND MD.gs1Fornitore = :new.gs1Fornitore
                    GROUP BY MD.codProdLuppUsato, MD.gs1Fornitore
            );
            
        
            IF BUYED-USED < :new.quantitaLuppUsato
                THEN RAISE notEnoughLupp;
            END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN 
            IF :new.quantitaLuppUsato > BUYED THEN RAISE_APPLICATION_ERROR (-20107,'Luppolo in scorta insufficiente');
            END IF;
            WHEN notEnoughLupp THEN  RAISE_APPLICATION_ERROR (-20107,'Luppolo in scorta insufficiente');
    END;
/

/*  3) Il terzo trigger controlla che la quantità di lievito utilizzato per la fermentazione sia 
       disponibile tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità 
       maggiore di quella che abbiamo in stock*/


    CREATE OR REPLACE TRIGGER Check_scorte_lievito  
        BEFORE INSERT ON Fermentazione               
        FOR EACH ROW
        DECLARE
            notEnoughLiev EXCEPTION;
             BUYED NUMBER;  
            USED NUMBER;    
        BEGIN
            SELECT totacq INTO BUYED
            FROM (
                    SELECT L.codProdotto, L.gs1Fornitore,SUM(quantitaAcquistata) totacq
                    FROM LottoMateriaPrima L
                    WHERE L.codProdotto = :new.codProdLievUsato AND L.gs1Fornitore = :new.gs1Fornit
                    GROUP BY L.codProdotto, L.gs1Fornitore
            );
            

            SELECT totused INTO USED
            FROM (
                    SELECT F.codProdLievUsato, F.gs1Fornit,SUM(quantitaLievUsato) totused
                    FROM Fermentazione F
                    WHERE F.codProdLievUsato = :new.codProdLievUsato AND F.gs1Fornit = :new.gs1Fornit
                    GROUP BY F.codProdLievUsato, F.gs1Fornit
            );
            
            IF USED IS NOT NULL AND :new.codProdLievUsato > BUYED-USED
                THEN RAISE notEnoughLiev;
            END IF;
            EXCEPTION
            WHEN NO_DATA_FOUND THEN 
            IF :new.quantitaLievUsato > BUYED THEN RAISE_APPLICATION_ERROR (-20004,'Lievito in scorta insufficiente');
            END IF;
                WHEN notEnoughLiev THEN  RAISE_APPLICATION_ERROR (-20004,'Lievito in scorta insufficiente');
    END;
/

/*  4) Questo trigger controlla che la quantità di malto e acqua utilizzati per l'ammostamento
       non sia superiore alla capacità di lavorazione del bollitore.*/

    CREATE OR REPLACE TRIGGER Check_lavorazione 
        BEFORE INSERT ON Ammostamento               
        FOR EACH ROW
        DECLARE
            notEnoughCapacity EXCEPTION;
            exc EXCEPTION;
            ContainerCap NUMBER;
        BEGIN
            SELECT capacitaLavorazione INTO ContainerCap
            FROM Contenitore C
            WHERE C.idContenitore = :new.idBollitore;
            IF (:new.quantitaAcqua > ContainerCap )
                THEN RAISE notEnoughCapacity;
            END IF;
        EXCEPTION
                WHEN notEnoughCapacity THEN  RAISE_APPLICATION_ERROR (-20006,'Capacità insufficiente');
    END;
/

/*  7) Durante un inserimento nell'ammostamento controlliamo che venga utilizzato un bollitore e non un
       fermentatore.*/

     CREATE OR REPLACE TRIGGER Check_Bollitore 
        BEFORE INSERT ON Ammostamento               
        FOR EACH ROW
        DECLARE
            tipo CHAR(20);
            wrongContainer EXCEPTION;
	BEGIN
        Select tipoContenitore INTO tipo 
        FROM Contenitore 
        WHERE idContenitore = :new.idBollitore;
        IF (tipo = 'Fermentatore') 
            THEN RAISE wrongContainer;
        END IF;
        EXCEPTION 
            WHEN wrongContainer THEN RAISE_APPLICATION_ERROR(-20007,'Wrong type container');
	END;
/

/*  8) Durante un inserimento nella fermentazione controlliamo che venga utilizzato un fermentatore e non un
       bollitore.*/

    CREATE OR REPLACE TRIGGER Check_Fermentatore
        BEFORE INSERT ON Fermentazione               
        FOR EACH ROW
        DECLARE
            tipo CHAR(20);
            wrongContainer EXCEPTION;
	BEGIN
        Select tipoContenitore INTO tipo 
        FROM Contenitore 
        WHERE idContenitore = :new.idFermentatore;
        IF (tipo = 'Bollitore') 
            THEN RAISE wrongContainer;
        END IF;
        EXCEPTION 
            WHEN wrongContainer THEN RAISE_APPLICATION_ERROR(-20009,'Wrong type container');
	END;
/
        
/*10) Controlla che il numero di fusti venduti sia presente in magazzino */	

	CREATE OR REPLACE TRIGGER CheckVendita
        BEFORE INSERT ON BirraVenduta               
        FOR EACH ROW
        DECLARE
        notEnoughtFusti EXCEPTION;
        totpr NUMBER;
        totsell NUMBER;
        BEGIN
        SELECT totprod INTO totpr
            FROM (
                    SELECT CODLOTTO,SUM(numFustiProdotti) totprod
                    FROM BirraProdotta 
                    WHERE CODLOTTO = :new.CODLOTTO
                    GROUP BY CODLOTTO
            );
        SELECT totprod INTO totsell
            FROM (
                    SELECT CODLOTTO,CODFATTURA,SUM(NUMFUSTI) totprod
                    FROM BIRRAVENDUTA
                    WHERE  CODLOTTO = :new.codLotto AND CODFATTURA = :new.CodFattura
                    GROUP BY CodLotto,CODFATTURA
            );

        IF totpr-totsell < :new.numFusti THEN RAISE notEnoughtFusti;
        END IF;
        EXCEPTION
        WHEN notEnoughtFusti THEN RAISE_APPLICATION_ERROR (-20843,'Troppi pochi fusti');
        END;
/ 
        
/*12) Controlla che non vengano eseguite fermentazioni in fermentatori già occupati*/	
	CREATE OR REPLACE TRIGGER CheckDisponibilitaFermentatore
        BEFORE INSERT ON Fermentazione
        FOR EACH ROW
            DECLARE
            FermentatoreOccupato EXCEPTION;
            occupato NUMBER;
        BEGIN
        SELECT COUNT(*) 
        INTO occupato 
        FROM FERMENTAZIONE 
        WHERE idFermentatore=:new.idFermentatore AND dataFineF IS NULL;
            
        IF (occupato > 0) THEN RAISE FermentatoreOccupato;
        END IF;
        EXCEPTION
        WHEN FermentatoreOccupato THEN RAISE_APPLICATION_ERROR(-20029,'Fermentatore Occupato');
    END;
/        

/*13) Controlla che quando viene inserita una materia prima in ammostamento questa sia un malto, in caso contrario lancia un eccezzione*/	

    CREATE OR REPLACE TRIGGER Check_IsMalt
        BEFORE INSERT ON AMMOSTAMENTO               
        FOR EACH ROW
        DECLARE
            tipoMateriaPrima CHAR(20);
            wrongMateriaPrima EXCEPTION;
	    BEGIN
            Select MP.tipo INTO tipoMateriaPrima 
            FROM LottoMateriaPrima LMP JOIN MateriaPrima MP ON LMP.nomeMateriaPrima=MP.nomeMatPrim
            WHERE LMP.codProdotto = :new.codProdottoMalto AND LMP.gs1Fornitore = :new.gs1Fornitore;
            IF (tipoMateriaPrima <> 'Malto') 
                THEN RAISE wrongMateriaPrima;
            END IF;
        EXCEPTION 
            WHEN wrongMateriaPrima THEN RAISE_APPLICATION_ERROR(-20100,'La materia prima non è malto');
	END;
/

/*14) Controlla che quando viene inserita una materia prima in mosto dolce questa sia un luppolo, in caso contrario lancia un eccezzione*/	

    CREATE OR REPLACE TRIGGER Check_IsHop
        BEFORE INSERT ON MostoDolce               
        FOR EACH ROW
        DECLARE
            tipoMateriaPrima CHAR(20);
            wrongMateriaPrima2 EXCEPTION;
	    BEGIN
            Select MP.tipo INTO tipoMateriaPrima 
            FROM LottoMateriaPrima LMP JOIN MateriaPrima MP ON LMP.nomeMateriaPrima=MP.nomeMatPrim
            WHERE LMP.codProdotto = :new.codProdLuppUsato AND LMP.gs1Fornitore = :new.gs1Fornitore;
            IF (tipoMateriaPrima <> 'Luppolo') 
                THEN RAISE wrongMateriaPrima2;
            END IF;
        EXCEPTION 
            WHEN wrongMateriaPrima2 THEN RAISE_APPLICATION_ERROR(-20101,'La materia prima non è luppolo');
	END;
/

/*15) Controlla che quando viene inserita una materia prima in fermentazione questa sia un lievito, in caso contrario lancia un eccezzione*/	

    CREATE OR REPLACE TRIGGER Check_IsYeast
        BEFORE INSERT ON Fermentazione               
        FOR EACH ROW
        DECLARE
            tipoMateriaPrima CHAR(20);
            wrongMateriaPrima3 EXCEPTION;
	    BEGIN
            Select MP.tipo INTO tipoMateriaPrima 
            FROM LottoMateriaPrima LMP JOIN MateriaPrima MP ON LMP.nomeMateriaPrima=MP.nomeMatPrim 
            WHERE LMP.codProdotto = :new.codProdLievUsato AND LMP.gs1Fornitore = :new.gs1Fornit;
            IF (tipoMateriaPrima <> 'Lievito') 
                THEN RAISE wrongMateriaPrima3;
            END IF;
        EXCEPTION 
            WHEN wrongMateriaPrima3 THEN RAISE_APPLICATION_ERROR(-20102,'La materia prima non è lievito');
	END;
        
        
        
	
	    
    
