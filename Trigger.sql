/*  1) Il primo trigger controlla che la quantità di malto utilizzato per l'ammostamento sia disponibile
       tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità maggiore di
       quella che abbiamo in stock*/


    CREATE OR REPLACE TRIGGER Check_scorte_malto  
        BEFORE INSERT ON Ammostamento               
        FOR EACH ROW
        DECLARE
            notEnoughMalt EXCEPTION;
            maltNotInStock EXCEPTION;
            maltoQT NUMBER;  
        BEGIN
            SELECT quantitaMagazzino INTO maltoQT
            FROM Malto M 
            WHERE M.GTIN = :new.gtinMALTO;
            IF maltoQT IS NULL THEN RAISE maltNotInStock;
            ELSIF (:new.quantitaMalto > maltoQT)
                THEN RAISE notEnoughMalt;
            ELSIF (:new.quantitaMalto <= maltoQT)
                THEN UPDATE Malto SET quantitaMagazzino = quantitaMagazzino - :new.quantitaMalto WHERE GTIN = :new.gtinMALTO;
            END IF;
        EXCEPTION
            WHEN notEnoughMalt THEN  RAISE_APPLICATION_ERROR (-20107,'Malto in scorta insufficiente');
            WHEN maltNotInStock THEN  RAISE_APPLICATION_ERROR (-20104,'Malto non in scorta');
    END;


/*  2) Il secondo trigger controlla che la quantità di luppolo utilizzato per l'ammostamento sia 
       disponibile tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità 
       maggiore di quella che abbiamo in stock*/

    CREATE OR REPLACE TRIGGER Check_scorte_luppolo  
        BEFORE INSERT ON MostoDolce               
        FOR EACH ROW
        DECLARE
            notEnoughLupp EXCEPTION;
            luppNotInStock EXCEPTION;
            luppoloQT NUMBER;  
        BEGIN
            SELECT quantitaMagazzino INTO luppoloQT
            FROM Luppolo LU 
            WHERE LU.GTIN = :new.gtinLuppoloUsato;
            IF luppoloQT IS NULL THEN RAISE luppNotInStock;
            ELSIF (:new.quantitaLuppoloUsato > luppoloQT)
                THEN RAISE notEnoughLupp;
            ELSIF (:new.quantitaLuppoloUsato <= luppoloQT)
                THEN UPDATE Luppolo SET quantitaMagazzino = quantitaMagazzino - :new.quantitaLuppoloUsato WHERE GTIN = :new.gtinLuppoloUsato;
            END IF;
            EXCEPTION
                WHEN notEnoughLupp THEN  RAISE_APPLICATION_ERROR (-20002,'Luppolo in scorta insufficiente');
                WHEN luppNotInStock THEN  RAISE_APPLICATION_ERROR (-20003,'Luppolo non in scorta');
    END;


/*  3) Il terzo trigger controlla che la quantità di lievito utilizzato per la fermentazione sia 
       disponibile tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità 
       maggiore di quella che abbiamo in stock*/


    CREATE OR REPLACE TRIGGER Check_scorte_lievito  
        BEFORE INSERT ON Fermentazione               
        FOR EACH ROW
        DECLARE
            notEnoughLiev EXCEPTION;
            lievNotInStock EXCEPTION;
            lievitoQT NUMBER;  
        BEGIN
            SELECT quantitaMagazzino INTO lievitoQT
            FROM Lievito LI 
            WHERE LI.GTIN = :new.gtinLievitoUsato;
            IF lievitoQT IS NULL THEN RAISE lievNotInStock;
            ELSIF (:new.quantitaLievitoUsato > lievitoQT)
                THEN RAISE notEnoughLiev;
            ELSIF (:new.quantitaLievitoUsato <= lievitoQT)
                THEN UPDATE Lievito SET quantitaMagazzino = quantitaMagazzino - :new.quantitaLievitoUsato WHERE GTIN = :new.gtinLievitoUsato;
            END IF;
            EXCEPTION
                WHEN notEnoughLiev THEN  RAISE_APPLICATION_ERROR (-20004,'Lievito in scorta insufficiente');
                WHEN lievNotInStock THEN  RAISE_APPLICATION_ERROR (-20005,'Lievito non in scorta');
    END;


/*  4) Questo trigger controlla che la quantità di malto e acqua utilizzati per l'ammostamento
       non sia superiore alla capacità di lavorazione del bollitore/fermentatore.*/

    CREATE OR REPLACE TRIGGER Check_lavorazione 
        BEFORE INSERT ON Ammostamento               
        FOR EACH ROW
        DECLARE
            notEnoughCapacity EXCEPTION;
            exc EXCEPTION;
            acquaQT NUMBER;
        BEGIN
            SELECT quantitaAcqua INTO acquaQT
            FROM Ammostamento A
            WHERE A.id = :new.idBollitore;
            IF acquaQT IS NULL THEN RAISE exc;
            ELSIF (:new.quantitaAcqua > acquaQT)
                THEN RAISE notEnoughCapacity;
            ELSIF (:new.quantitaAcqua <= acquaQT)
                THEN UPDATE Contenitore SET capacitaLavorazione = capacitaLavorazione -:new.quantitaAcqua WHERE id = :new.idBollitore;
            END IF;
        EXCEPTION
                WHEN notEnoughCapacity THEN  RAISE_APPLICATION_ERROR (-20006,'Capacità insufficiente');
                WHEN exc THEN  RAISE_APPLICATION_ERROR (-20007,'Acqua superiore alla capacità');
    END;
