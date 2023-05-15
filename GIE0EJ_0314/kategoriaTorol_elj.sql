CREATE OR REPLACE PROCEDURE KategoriaTorol (
  p_kkod IN Kategoria.Kkod%TYPE
)
IS
BEGIN
  DELETE FROM Kategoria WHERE Kkod = p_kkod;
END;