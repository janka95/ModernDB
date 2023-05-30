xquery version "3.1";

let $gy := fn:doc("GIE0EJ_ovoda.xml") //gyerek
return
update value //nev [.="Kovács Márta"] with "Kovács Mari"