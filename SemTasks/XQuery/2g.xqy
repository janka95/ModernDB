xquery version "3.1";

let $gy := fn:doc("GIE0EJ_ovoda.xml") //gyerek[@jel = "körte"]

return
	update delete $gy