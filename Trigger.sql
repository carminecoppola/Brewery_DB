/*  1) Il primo trigger controlla che la quantità di malto utilizzato per l'ammostamento sia disponibile
       tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità maggiore di
       quella che abbiamo in stock*/


    CREATE OR REPLACE TRIGGER Check_scorte_malto  
    BEFORE INSERT ON Ammostamento               
        FOR EACH ROW
        DECLARE
            notEnoughMalt EXCEPTION;
            maltQT NUMBER;
        BEGIN
            SELECT QUANTITAMAGAZZINO INTO maltQT
            FROM Malto M JOIN Ammostamento A ON M.GTIN = A.gtinMALTO
            WHERE M.GTIN = :new.gtinMALTO;
            IF :new.gtinMALTO > maltQT
                THEN RAISE notEnoughMalt;
            ELSIF :new.gtinMALTO <= maltQT
                THEN UPDATE Malto SET QUANTITAMAGAZZINO = QUANTITAMAGAZZINO - :new.gtinMALTO WHERE GTIN = :new.gtinMALTO;
            END IF;
        EXCEPTION
            WHEN notEnoughMalt 
                THEN  RAISE_APPLICATION_ERROR (-20107,'Malto in scorta insufficiente');
    END;


/*  2) Il secondo trigger controlla che la quantità di luppolo utilizzato per l'ammostamento sia 
       disponibile tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità 
       maggiore di quella che abbiamo in stock*/

    CREATE OR REPLACE TRIGGER Check_scorte_luppolo  
    BEFORE INSERT ON MostoDolce               
        FOR EACH ROW
        DECLARE
            notEnoughMalt EXCEPTION;
            luppQT NUMBER;
        BEGIN
            SELECT quantitaMagazzino INTO luppQT
            FROM Luppolo LU JOIN MostoDolce MD ON LU.GTIN = MD.gtinLuppoloUsato
            WHERE LU.GTIN = :new.gtinLuppoloUsato;
            IF :new.gtinLuppoloUsato > luppQT
                THEN RAISE notEnoughMalt;
            ELSIF :new.gtinLuppoloUsato <= luppQT
                THEN UPDATE Luppolo SET quantitaMagazzino = quantitaMagazzino - :new.gtinLuppoloUsato WHERE GTIN = :new.gtinLuppoloUsato;
            END IF;
        EXCEPTION
            WHEN notEnoughMalt 
                THEN  RAISE_APPLICATION_ERROR (-20107,'Luppolo in scorta insufficiente');
    END;


/*  3) Il terzo trigger controlla che la quantità di lievito utilizzato per la fermentazione sia 
       disponibile tra le scorte in magazzino poichè ovviamente non possiamo utilizzare una quantità 
       maggiore di quella che abbiamo in stock*/


    CREATE OR REPLACE TRIGGER Check_scorte_lievito  
    BEFORE INSERT ON Fermentazione               
        FOR EACH ROW
        DECLARE
            notEnoughMalt EXCEPTION;
            lievQT NUMBER;
        BEGIN
            SELECT quantitaMagazzino INTO lievQT
            FROM Lievito LI JOIN Fermentazione F ON LI.GTIN = F.gtinLievitoUsato
            WHERE LI.GTIN = :new.gtinLievitoUsato;
            IF :new.gtinLievitoUsato > lievQT
                THEN RAISE notEnoughMalt;
            ELSIF :new.gtinLievitoUsato <= lievQT
                THEN UPDATE Lievito SET quantitaMagazzino = quantitaMagazzino - :new.gtinLievitoUsato WHERE GTIN = :new.gtinLievitoUsato;
            END IF;
        EXCEPTION
            WHEN notEnoughMalt 
                THEN  RAISE_APPLICATION_ERROR (-20107,'Malto in scorta insufficiente');
    END;