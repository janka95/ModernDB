CREATE OR REPLACE PROCEDURE UjKategoria (
  p_kkod IN Kategoria.Kkod%TYPE,
  p_nev IN Kategoria.Nev%TYPE,
  p_fizetes IN Kategoria.Fizetes%TYPE,
  p_beosztas IN Kategoria.Beosztas%TYPE
)
IS
BEGIN
  INSERT INTO Kategoria (Kkod, Nev, Fizetes, Beosztas) VALUES (p_kkod, p_nev, p_fizetes, p_beosztas);
END;