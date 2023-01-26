adding
addTitles 
|title1 title2|
title1 := StringMorph contents: 'DNI'. 
title2 := StringMorph contents: 'Contraseña'.

title1 position: inDni center - (10@35).
title2 position:inContra position - (-50@20).
self addMorph: title1 ; addMorph: title2.