xquery version "3.1";

for $d in fn:doc ("GIE0EJ_ovoda.xml") //dolgozo
where $d /beosztas = "dajka" and $d /szulido = min (//szulido)
return
	<legidosebbdajka>
		{$d /nev}
		{$d /szulido}
	</legidosebbdajka>