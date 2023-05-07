adding
addTitles
|font name surname d|
font := Helper getFontWithSize: 13.
			
name := 'Nombre:  '.
surname := 'Apellido:  '.
d := 'DNI:  '.

nombre := StringMorph contents: name. 
apellido := StringMorph contents: surname.
dni := StringMorph contents: d.

nombre font: font.
apellido font: font.
dni font: font.

dni left: panelUser left + 25 ; bottom: panelUser bottom - 60.
apellido left: dni left; bottom: dni top - 30.
nombre left: dni left; bottom: apellido top - 30.

self addMorph: nombre; addMorph: apellido; addMorph: dni.


