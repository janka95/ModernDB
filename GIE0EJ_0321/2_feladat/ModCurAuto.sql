CREATE OR REPLACE PROCEDURE aut_arnov1(p_szin IN VARCHAR2, p_novel IN NUMBER) AS
  CURSOR cur_a IS
    SELECT * FROM Auto WHERE szin = p_szin FOR UPDATE;
  a Auto%ROWTYPE;
BEGIN
  OPEN cur_a;
  LOOP
    FETCH cur_a INTO a;
    EXIT WHEN cur_a%NOTFOUND;
    a.ar := a.ar * (1 + (p_novel / 100));
    UPDATE Auto SET ar = a.ar WHERE CURRENT OF cur_a;
  END LOOP;
  CLOSE cur_a;
  COMMIT;
END;