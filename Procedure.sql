/*1) Il mastro birraio responsabile del tipo di birra più venduta riceverà un incremento dello 
     stipendio del 15%. */

    CREATE OR REPLACE PROCEDURE Aumento_stipendio IS
    BEGIN

    UPDATE MASTROBIRRAIO SET STIPENDIO = STIPENDIO * 1.20 
    WHERE SSN IN (SELECT ssnSupervisore 
                  FROM  TIPOBIRRA TB
                  WHERE GTIN =(SELECT GTIN
                               FROM (SELECT GTIN, SUM(NUMFUSTI) AS TOTVENDITA 
                                     FROM BIRRAPRODOTTA BP JOIN BIRRAVENDUTA BV ON BP.codLotto = BV.codLotto
                                     GROUP BY BP.GTIN ) 
                                WHERE TOTVENDITA = (SELECT MAX(TOTVENDITA) 
                                                    FROM (SELECT GTIN, SUM(NUMFUSTI) AS TOTVENDITA 
                                                          FROM BIRRAPRODOTTA BP JOIN BIRRAVENDUTA BV ON BP.codLotto = BV.codLotto
                                                          GROUP BY BP.GTIN))));
    END;
    
/*2) Trovare la birra che viene venduta di meno e applicare uno
     sconto del 25% sul prossimo acquisto del fusto di tale birra.*/

    CREATE OR REPLACE PROCEDURE ScontoFusto IS
    BEGIN

    UPDATE TIPOBIRRA SET prezzoFusto = prezzoFusto * 0.80 WHERE GTIN IN (SELECT GTIN 
    FROM    TIPOBIRRA TB
    WHERE GTIN =    (SELECT GTIN
                        FROM ( SELECT GTIN, SUM(NUMFUSTI) AS TOTVENDITA 
                        FROM BIRRAPRODOTTA BP JOIN BIRRAVENDUTA BV ON BP.codLotto = BV.codLotto
                        GROUP BY BP.GTIN ) 
                WHERE   TOTVENDITA = (  SELECT MIN(TOTVENDITA) 
                                    FROM (  SELECT GTIN, SUM(NUMFUSTI) AS TOTVENDITA 
                                            FROM BIRRAPRODOTTA BP JOIN BIRRAVENDUTA BV ON BP.codLotto = BV.codLotto
                                            GROUP BY BP.GTIN))));

     END;



/* 3 Malto inglese pagato mediamente di più ----> aumentare del 20% il prezzo delle birre che lo usano */
     CREATE OR REPLACE PROCEDURE IncrementaPrezzo IS
     BEGIN
     
     UPDATE TIPOBIRRA SET prezzoFusto = prezzoFusto * 1.20 WHERE GTIN IN (
          SELECT GTIN
          FROM TIPOBIRRA
          WHERE NOMEMALTO IN(SELECT nomeMateriaPrima 
          FROM (SELECT L.nomeMateriaPrima, AVG(prezzoAcquisto/quantitaAcquistata) AS Media
                FROM LottoMateriaPrima L JOIN MateriaPrima M ON L.nomeMateriaPrima = M.NOMEMATPRIM
                WHERE M.provenienza = 'Regno Unito' AND M.Tipo = 'Malto'
                GROUP BY L.nomeMateriaPrima)
          WHERE Media = (SELECT MAX(Media)
          FROM (SELECT L.nomeMateriaPrima, AVG(prezzoAcquisto/quantitaAcquistata) AS Media
                FROM LottoMateriaPrima L JOIN MateriaPrima M ON L.nomeMateriaPrima = M.NOMEMATPRIM
                WHERE M.provenienza = 'Regno Unito' AND M.Tipo = 'Malto'
                GROUP BY L.nomeMateriaPrima))));
                
END;

/*4 Diminuire del “30%” il prezzo dei fusti di birre fatte con malti che hanno più di 100 unità in stock*/
     CREATE OR REPLACE PROCEDURE DecrementaPrezzo IS
     BEGIN
     
     UPDATE TIPOBIRRA SET prezzoFusto = prezzoFusto * 0.70 WHERE GTIN IN (
          SELECT GTIN 
          FROM TIPOBIRRA
          WHERE NOMEMALTO IN(
                SELECT nomeMateriaPrima
                FROM ( SELECT L.nomeMateriaPrima,RIMANENZE
                      FROM LottoMateriaPrima L JOIN MaltiRimanenti A on L.CODLOTTO = A.CODLOTTO AND L.CODPRODOTTO = A.CODPRODOTTO AND L.gs1Fornitore = A.gs1Fornitore)
                WHERE RIMANENZE > 100));
     END;




--VISTA PER ACQUISTI

CREATE VIEW Acquisti AS (SELECT *
            FROM (
                    SELECT L.CODLOTTO,L.codProdotto, L.gs1Fornitore,SUM(quantitaAcquistata) totacq
                    FROM LottoMateriaPrima L
                    GROUP BY L.CODLOTTO,L.codProdotto, L.gs1Fornitore
            ));

CREATE VIEW MaltiUsati AS (SELECT *
            FROM (
                    SELECT A.CODLOTTO,A.codProdottoMalto, A.gs1Fornitore,SUM(quantitaMalto) totused
                    FROM Ammostamento A
                    GROUP BY A.CODLOTTO,A.codProdottoMalto, A.gs1Fornitore
            ));

CREATE VIEW MaltiRimanenti AS (SELECT A.CODLOTTO,A.CODPRODOTTO,A.GS1FORNITORE,TOTACQ-TOTUSED AS RIMANENZE FROM Acquisti A
JOIN
MaltiUsati MU ON A.CODLOTTO = MU.CODLOTTO AND A.CODPRODOTTO = MU.CODPRODOTTOMALTO AND A.GS1FORNITORE = MU.GS1FORNITORE);




