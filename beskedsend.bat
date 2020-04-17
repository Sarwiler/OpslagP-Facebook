@if (@codesection == @batch) @then

@echo off

 start "" https://www.facebook.com/

 rundll32 user32.dll,SetCursorPos

timeout 6

cscript /e:jscript "%~f0"

@end

var shl = new ActiveXObject("WScript.Shell");


function skrivBesked(){

shl.SendKeys(String.fromCharCode(80));

var str = "Det her er en string der bliver skrevet på et facebook opslag";

for (var a=0; a<str.length; a++) {

var wonk = str.charCodeAt(a);

shl.SendKeys(String.fromCharCode(wonk));
}
}

function sendBesked(){
for (var i=0; i<20; i++) {
shl.SendKeys(String.fromCharCode(9));
}
shl.SendKeys(String.fromCharCode(13));
}

skrivBesked(); 
sendBesked();
