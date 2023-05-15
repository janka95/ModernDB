DECLARE
  CURSOR piros IS
    SELECT * FROM Piros_Auto WHERE szin = 'piros';
BEGIN
  FOR x IN piros LOOP
    INSERT INTO MasikPiros_Auto VALUES x;
  END LOOP;
END;