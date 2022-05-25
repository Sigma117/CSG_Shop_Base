--1)Aggiunta di un utente (100 volte al mese)

INSERT INTO "UTENTE" ("Id_Utente", "Nome_Utente", "Cognome_Utente", "PW", "Mail", "Indirizzo")
VALUES (Character, Character, Character, Character, Character)

--2)Aggiunta di un fornitore (5 volte al mese)

INSERT INTO "FORNITORE" ("Partita_Iva", "Telefono", "Mail", "Sede")
VALUES (Character 11, integer, Character, Character)

--3)Aggiunta di una ditta di spedizione (5 volte al mese)

INSERT INTO "DITTA_DI_SPEDIZIONE" ("P_Iva", "Nome", "Mail", "Telefono", "Sede_Ditta_Spedizione")
VALUES (Character 11, Character, Character, Integer, Character)

--4)Aggiunta di un prodotto nell’inventario (20 volte al mese)

INSERT INTO "PRODOTTO" ("Id_Prodotto", "Prezzo", "Informatica", "Marchio")
VALUES (Character, integer, Character, Character)

--5)Aggiunta di una offerta (40 volte al mese)

INSERT INTO "OFFERTA" ("Codice_Offerta", "Data_Inizio", "Data_Fine", "Percentuale_Sconto", "Categoria", "Prodotto", "Marchio")
VALUES (Character, date, date, integer, Character, Character, Character)

--6)Aggiunta di un pagamento (250 volte al mese)
--DA SCRIVERE COME FUNZIONE
INSERT INTO "PAGAMENTO" ("Id_Pagamento", "N_carta", "Data", "importo", "Utente", "Ordine")
VALUES (serial, integer, YYYY-MM-GG, dobule, character, character)

UPDATE "UTENTE"
SET "N_Pagamenti" = N_Pagamenti + 1
WHERE "Id_Utente" = utente

INSERT INTO "ORDINE" ("Id_Ordine", "N_Articoli", "Pagamento", "Spedizione")
VALUES (integer, integer, integer, integer)

--Creiamo l’ordine quando veniamo pagati, quindi un’aggiunta di pagamento implica una modifica di un’attributo di utente e l’aggiunta di un ordine

--7)Aggiunta di una spedizione (250 volte al mese) //una spedizione per ogni pagamento

INSERT INTO "SPEDIZIONE" ("Id_Spedizione", "Data", "Costo_Spedizione", "Ditta_Spedizione", "Ordine", "Pagamento", "Utente")
VALUES (Character, integer, integer, Character, Character’, integer, Character)

--8)Assegnazione di una spedizione ad un ditta di spedizione (250 volte al mese)//tanti ordini tanti pagamenti tante ditte

UPDATE "SPEDIZIONE" set ditta_spedizione = character
WHERE "ditta_spedizione" = character

--9)Aggiunta di un prodotto all’ordine (2 (numero prodotti)* 250 (numero ordini) = 500 volte al mese)
--Non sarebbe meglio classificarla come modifica di un ordine? Perché a livello di relazioni noi modifichiamo un ordine aggiungendo ad esso un semplice numero

UPDATE "ORDINE" SET N_articoli = integer
WHERE "N_articolo" = integer + 1
--L’ordine rimane tale ma il prodotto cambia. Rimane il problema di aggiungere due stessi prodotti ad uno stesso ordine, quindi ci serve if and else
INSERT INTO "COMPOSIZIONE" ("Prodotto", "Ordine", "N_Prodotti")
VALUES (character, character, integer)
--Caso che non risono prodotti e c’è la creazione dell’ordine
INSERT INTO "Ordine" ("Id_Ordine", "N_Articoli", "Costo_Ordine", "Pagamento", "Spedizione")
VALUES (character, integer, double, character, character)
INSERT INTO "COMPOSIZIONE" ("Prodotto", "Ordine", "N_Prodotti")
VALUES (character, character, integer)

--10)Cancellazione di un utente  (10 volte al mese)

Delete FROM "UTENTE"
WHERE "id_utente" = character

--11)Cancellazione di un fornitore  (2 volte al mese)

Delete FROM "FORNITORE"
WHERE "id_fornitore" = character

--12)Cancellazione di una ditta di spedizioni (1 volta al mese)

DELETE FROM "SPEDIZIONE"
WHERE "id_spedizione" = character

--13)Cancellazione di un prodotto (5 volte al mese)

DELETE FROM "PRODOTTO"
WHERE "id_prodotto" = character

--14)Cancellazione dell’offerta (40 volte al mese)

DELETE FROM "OFFERTA"
WHERE "codice_offerta" = character

--15)Cancellazione di un pagamento (30 volte al mese)

DELETE FROM "PAGAMENTO"
WHERE "id_pagamento" = character

--16)Cancellazione di una spedizione (30 volte al mese)

DELETE FROM "SPEDIZIONE"
WHERE "id_spedizione" = character

--17)Cancellazione di un ordine (30 volte al mese)

DELETE FROM "ORDINE"
WHERE "id_ordine" = character

--18)Cancellazione di un prodotto dall’ordine (250 volte al mese)

UPDATE "ORDINE" SET "N_articoli" = integer
WHERE "N_articolo" = integer - 1
--Caso del doppio prodotto

DELETE FROM "COMPOSIZIONE" 
WHERE "Prodotto" = character AND "Ordine" = character, "N_Prodotti" = integer - 1 

--Caso del prodotto singolo
Delete From "COMPOSIZIONE"
WHERE "Prodotto" = character AND "Ordine" = character AND "N_Prodotti" = 1
-- non so se si può fare, si perché id_prodotto sta nella relazione PRODOTTO


--19)Modifica dati di un utente ( 20 volte al mese)

UPDATE "UTENTE" SET "nome_utente" = character
WHERE "nome_utente" = character
UPDATE "UTENTE" SET "cognome_utente" = character
WHERE "cognome_utente" = character
UPDATE "UTENTE" set "pw" = character
WHERE "pw" = character
UPDATE "UTENTE" SET "mail" = character
WHERE "mail" = character
UPDATE "UTENTE" SET "mail" = character
WHERE "mail" = character

--20)Modifica dati fornitore (3 volte al mese)

UPDATE "FORNITORE" SET "p.iva" = character
WHERE "p.iva" = character
UPDATE "FORNITORE" SET "telefono" = integer
WHERE "telefono" = integer
UPDATE "FORNITORE" SET "mail" = character
WHERE "mail" = character
UPDATE "FORNITORE" SET "sede" = character
WHERE "sede" = character

--21)Modifica dati ditta di spedizione (3 volte al mese) 

UPDATE "DITTA_SPEDIZIONI" SET "p.iva" = character
WHERE "p.ita" = character
UPDATE "DITTA_SPEDIZIONI" SET "nome" = character
WHERE "nome" = character
UPDATE "DITTA_SPEDIZIONI" SET "email" = character
WHERE "nome" = character
UPDATE "DITTA_SPEDIZIONI" SET "telefono" = integer
WHERE "telefono" = integer
UPDATE "DITTA_SPEDIZIONI" SET "sede_ditta_spedizione" = character
WHERE "sede_ditta_spedizione" = character

--22)Modifica di prezzo di un prodotto (40 al mese)

UPDATE "PRODOTTO" SET "prezzo" = integer
WHERE "prezzo" = integer

--23)Modifica dell’inventario di un magazzino (70 volte al mese)

SELECT
FROM
WHERE

--24)Modifica Lista di prodotti di una categoria (20 volte al mese)

SELECT
FROM
WHERE

--25)Stampa la lista degli utenti (1 volta al mese)

SELECT "UTENTE*"
FROM "UTENTE"

--26)Stampa la lista dei fornitori (1 volta al mese)

SELECT "LISTA_FORNITORI*"
FROM "LISTA_FORNITORI"

--27)Stampa la lista delle Spedizioni assegnate ad una ditta di spedizioni (20 volte al mese)

SELECT "D.p.iva", "S.id_spedizioni"
FROM "DITTA_SPEDIZIONI D", "SPEDIZIONI S"
WHERE S.ditta_spedizione = D.p.iva and p.iva = character
GROUP BY D.p.iva, S.id_spedizioni

--28)Stampa l’inventario dei prodotti del magazzino (1 volta al mese)

SELECT M.id_magazzino, P.id_prodotto, I.quantità_di_prodotto
FROM PRODOTTO P, INVENTARIO I, MAGAZINO M,
WHERE P.id_prodotto = I.prodotto and M.id_magazzino = I.magazzino 
GROUP BY M.id_magazzino, P.id_prodotto, I.quantità_di_prodotto


--29)Stampa la lista delle offerte attive  (1 volta al mese)

SELECT P.id_prodotto, O.Percentuale_Sconto
FROM OFFERTA O, PRODOTTO P, SU S
WHERE S.offerta = O.codice_oferta AND S.prodotto = P.id_prodotto AND O.data_inizio <= (SELECT CONVERT(date, SYSDATETIME()) and O.date_fine <= (SELECT CONVERT(date, SYSDATETIME())

--30)Stampa la lista delle pagamenti effettuate da un utente (100 volte al mese)

SELECT U.id_utenti, U.nome_utente, U.cognome_utente, P.importo, P.data, P.id_pagamento, P.n_carta
FROM UTENTE U, PAGAMENTO P
WHERE P.utente = U.id_utenti AND U.utente = character 
