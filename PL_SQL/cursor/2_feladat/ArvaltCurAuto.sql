CREATE OR REPLACE PROCEDURE aut_arnov5 (p_szin IN VARCHAR2, p_szazalek IN NUMBER) AS
  CURSOR cur_a IS
    SELECT * FROM Auto WHERE szin = p_szin;
  v_ar NUMBER(10);
  db NUMBER(3);
BEGIN
db := 0;
  FOR a IN cur_a LOOP
    v_ar := a.ar * (1 + p_szazalek / 100);
    UPDATE Auto SET ar = v_ar WHERE rsz = a.rsz;
    db := db + 1;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE(db || ' darab autó ára lett növelve.');
END;