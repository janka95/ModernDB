SELECT cim FROM KÖNYV;
SELECT * FROM KÖNYV WHERE ar > 2000;
SELECT cim FROM KÖNYV WHERE ar < 1000;
SELECT DISTINCT targy FROM KÖNYV;
SELECT cim, ar FROM KÖNYV WHERE targy = 'AB';
SELECT COUNT(*) AS darabszam FROM KÖNYV;
SELECT AVG(ar) AS atlagar FROM KÖNYV;
SELECT MIN(ar) AS legolcsobb_ar FROM KÖNYV;
SELECT COUNT(*) AS darabszam FROM KÖNYV WHERE targy = 'AB';
SELECT MAX(ar) AS legdragabb_ar FROM KÖNYV WHERE targy = 'AB';
SELECT cim FROM KÖNYV WHERE ar > (SELECT AVG(ar) FROM KÖNYV);
SELECT COUNT(*) AS darabszam FROM KÖNYV WHERE ar > (SELECT AVG(ar) FROM KÖNYV);
