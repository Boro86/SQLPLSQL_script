CREATE TABLE "IPS_ETL"."RACHUNEK_DEKRETY_OPERACJE" AS 
SELECT
    CASE
        WHEN dd."ID_ANALITYKI" = '48000232' THEN 11193014192300034972230006
        WHEN dd."ID_ANALITYKI" = '42622598' THEN 22193014192300034972230002
        ELSE 0
    END AS nrb,
    dd.data_danych,
    dd.id_analityki,
    dd.id_dekretu,
    dd.id_dk_def,
    dd.modulo,
    dd.konto,
    dd.kwota_ma,
    dd.kwota_wn,
    dd.tresc,
    dd.nr_banku,
    dd.nr_dekr,
    dd.typ_dekr,
    oo.data_operacji,
    oo.nr_banku_zlec,
    oo.nr_rachunku_wn,
    oo.nr_rachunku_zlec,
    oo.nazwa_adr_zlec,
    oo.nr_banku_benef,
    oo.nr_rachunku_ma,
    oo.nr_rachunku_benef,
    oo.nazwa_adr_benef,
    oo.tytul_operacji,
    oo.instrukcje_miedzybank,
    oo.kwota_operacji,
    oo.kod_waluty   
FROM
    hurt.dekrety dd
    LEFT JOIN hurt.operacje_dekrety od ON dd.nr_dok = od.nr_dokumentu
                                          AND dd.nr_dekr = od.nr_dekretu
                                              AND dd.data_danych = od.data_aktualizacji
    LEFT JOIN hurt.operacje oo ON od.id_operacji = oo.id_operacji
                                  AND dd.data_danych = oo.data_operacji
WHERE
    dd.id_analityki IN (
        '48000232',
        '42622598'
    )
    AND dd.modulo = 3497223
        AND dd.data_danych >= '2022/01/01'
 ORDER by data_danych desc