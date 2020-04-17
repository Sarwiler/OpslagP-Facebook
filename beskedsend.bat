@if (@codesection == @batch) @then

rem Når man skal kommentere kode i batch skal man skrive rem forrest.

rem echo off betyder bare at når koden bliver logget, har den ikke hele directory pathen med.
@echo off

rem åbner facebook
 start "" https://www.facebook.com/

rem fjerner musen for skærmen så det bliver sværere at nå og lukke bat filen ned
 rundll32 user32.dll,SetCursorPos

rem giver tid til at facebook ordentligt så man kan sende lortet
timeout 6

rem skifter programmeringssproget til javascript
cscript /e:jscript "%~f0"

@end

rem aktiverer for shell biblioteket indbygget i computeren
var shl = new ActiveXObject("WScript.Shell");


function skrivBesked(){

//Simulerer trykket af P tasten, som er et shortcut på facebook til at lave et opslag
shl.SendKeys(String.fromCharCode(80));

//æøå bliver ikke fyret ind i stringen da den bliver ignoreret.
var str = "Det her er en string der bliver skrevet på et facebook opslag";

//en for loop funktion der læser stringen og konverterer alle tegn i stringen til UTF-16 kode.
for (var a=0; a<str.length; a++) {
//variablen wonk bliver til UTF-16 koden af det tegn der er på str(a).
var wonk = str.charCodeAt(a);
//Derefter sender den til tastaturet hvilket tegn der skal indtastes.
shl.SendKeys(String.fromCharCode(wonk));
}
}

function sendBesked(){
/*I den her for loop funktion bliver der trykket på tab tasten 20 gange 
som er den krævet mængde gange for at markere send knappen på facebook.*/
for (var i=0; i<20; i++) {
shl.SendKeys(String.fromCharCode(9));
}
//Her bliver der trykket på enter tasten.
shl.SendKeys(String.fromCharCode(13));
}

//Her bliver der bare indsat de funktioner jeg har lavet.
skrivBesked(); 
sendBesked();
