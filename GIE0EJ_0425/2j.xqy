xquery version "3.1";

for $cs in fn:doc("GIE0EJ_ovoda.xml")//csoport
return
	element {"létszám"} {
		attribute {"csoport"} {$cs/@nev},
	 	text {count($cs/gyerek)}
	}