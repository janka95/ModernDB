CREATE OR REPLACE PROCEDURE aut_arnov3 (p_szin IN VARCHAR2, p_szazalek IN NUMBER) AS
  CURSOR cur_a IS
    SELECT * FROM Auto WHERE szin = p_szin;
  v_ar NUMBER(10);
BEGIN
  FOR a IN cur_a LOOP
    v_ar := a.ar * (1 + p_szazalek / 100);
    UPDATE Auto SET ar = v_ar WHERE rsz = a.rsz;
  END LOOP;
END;