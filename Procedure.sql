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
                                     GROUP BY BV.GTIN ) 
                                WHERE TOTVENDITA = (SELECT MAX(TOTVENDITA) 
                                                    FROM (SELECT GTIN, SUM(NUMFUSTI) AS TOTVENDITA 
                                                          FROM BIRRAPRODOTTA BP JOIN BIRRAVENDUTA BV ON BP.codLotto = BV.codLotto
                                                          GROUP BY BV.GTIN))));
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
                        GROUP BY BV.GTIN ) 
                WHERE   TOTVENDITA = (  SELECT MIN(TOTVENDITA) 
                                    FROM (  SELECT GTIN, SUM(NUMFUSTI) AS TOTVENDITA 
                                            FROM BIRRAPRODOTTA BP JOIN BIRRAVENDUTA BV ON BP.codLotto = BV.codLotto
                                            GROUP BY BV.GTIN))));

     END;



/* 3 Malto inglese pagato mediamente di più ----> aumentare del 20% il prezzo delle birre che lo usano */
     CREATE OR REPLACE PROCEDURE IncrementaPrezzo IS
     BEGIN
     
     UPDATE TIPOBIRRA SET prezzoFusto = prezzoFusto * 0.70 WHERE GTIN IN (
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
               FROM ( SELECT L.nomeMateriaPrima,SUM(quantitaAcquistata) totacq, SUM(quantitaMalto) totused
                      FROM LottoMateriaPrima L JOIN Ammostamento A on L.codProdotto = A.codProdottoMalto AND L.gs1Fornitore = A.gs1Fornitore
                      GROUP BY L.nomeMateriaPrima)
          WHERE totacq - totused > 100);
     END;