Run, msedge.exe "https://chatgpt.com/"
Sleep, 5000 ; wacht 5 seconden tot de pagina is geladen

; Simuleer het indrukken van de Alt-toets en de "F" toets om het menu te openen
Send, !f
Sleep, 1000 ; wacht 1 seconde voor het menu

; Pijl naar beneden 10 keer drukken
Send, {Down 10}
Sleep, 500 ; wacht even voordat je Enter drukt

; Druk 2 keer op Enter
Send, {Enter}
Sleep, 100 ;
Send, {Enter}
Sleep, 1000 ;
Send, C
Sleep, 100
Send, h
Sleep, 100
Send, a
Sleep, 100
Send, t
Sleep, 100
Send, G
Sleep, 100
Send, P
Sleep, 100
Send, T
Sleep, 100
Send, X
Sleep, 100 ;
Send, {Enter}
Sleep, 100 ;
Send, {Enter}
Sleep, 500 ;


Sleep, 2000 ; wacht even voordat je begint met typen
Send, {Esc}
Sleep, 1000
Send, Nu kan je op Alt {+} Spatie drukken om ChatGPTX te openen / sluiten, en dit werkt  altijd, ook wanneer je je computer opnieuw opstart.
Sleep, 100
Send, {Enter}
return