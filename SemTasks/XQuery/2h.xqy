xquery version "3.1";

for $n in fn:doc("GIE0EJ_ovoda.xml")//gyerek
where $n/@jel="alma"
return
	element {"eredmény"} {
		attribute {"jel"} {$n/@jel},
		text {$n/nev}
	}