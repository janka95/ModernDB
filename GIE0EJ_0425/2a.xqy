xquery version "3.1";

for $o in doc ("GIE0EJ_ovoda.xml") //dolgozo
where $o /beosztas = "óvónő"
order by $o /nev
return
	element {"óvónő"} {
		text {$o}
	}