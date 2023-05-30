xquery version "3.1";

for $d in fn:doc ("GIE0EJ_ovoda.xml") //dolgozo
where $d /beosztas = "dajka" and $d /szulido = max (//szulido)
return
	<legfiatalabbdajka>
		{$d /nev}
		{$d /szulido}
	</legfiatalabbdajka>