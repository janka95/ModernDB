CREATE OR REPLACE TRIGGER TB
AFTER INSERT ON Vasarlo2
FOR EACH ROW
BEGIN
  INSERT INTO Naplo5 VALUES ('Beszúrás', :new.VID || '_' || :new.NEV || '_' || :new.CIM, sysdate);
END;