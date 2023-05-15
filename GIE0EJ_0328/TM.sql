CREATE OR REPLACE TRIGGER TM
AFTER UPDATE ON Vasarlo2
FOR EACH ROW
BEGIN
  IF UPDATING('VID') THEN
    INSERT INTO Naplo5 VALUES ('M�dos�t�s', :old.VID || '_' || :new.VID, sysdate);
  END IF;

  IF UPDATING('NEV') THEN
    INSERT INTO Naplo5 VALUES ('M�dos�t�s', :old.NEV || '_' || :new.NEV, sysdate);
  END IF;

  IF UPDATING('CIM') THEN
    INSERT INTO Naplo5 VALUES ('M�dos�t�s', :old.CIM || '_' || :new.CIM, sysdate);
  END IF;

  IF UPDATING('FIZMOD') THEN
    INSERT INTO Naplo5 VALUES ('M�dos�t�s', :old.FIZMOD || '_' || :new.FIZMOD, sysdate);
  END IF;
END;