xquery version "3.1";

for $cs in fn:doc ("GIE0EJ_ovoda.xml") //csoport
where $cs /@nev = "süni"
return
	element {"sünicsoport"} {
		text {$cs /gyerek/nev}
	}