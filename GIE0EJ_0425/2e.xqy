xquery version "3.1";

let $gy := fn:doc("GIE0EJ_ovoda.xml") //csoport[@nev = "süni"]
return
update insert
	<gyerek jel = "fagyi">
		<nev>Kocsis Laci</nev>
		<szulido>2018</szulido>
	</gyerek>
into $gy