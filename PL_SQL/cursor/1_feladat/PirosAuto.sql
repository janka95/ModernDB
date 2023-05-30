DECLARE
  CURSOR piros IS
    SELECT * FROM Piros_Auto WHERE szin = 'piros';
  x Piros_Auto%ROWTYPE;
BEGIN
  OPEN piros;
  LOOP
    FETCH piros INTO x;
    EXIT WHEN piros%NOTFOUND;
    INSERT INTO MasikPiros_Auto VALUES x;
  END LOOP;
  CLOSE piros;
  COMMIT;
END;