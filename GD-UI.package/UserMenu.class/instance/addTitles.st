adding
addTitles 
|font botonLogout|
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 14).

nombre := StringMorph contents: 'Nombre: '. 
apellido := StringMorph contents: 'Apellido: '.
dni := StringMorph contents: 'Dni: '.

nombre center: rectangulo center.
nombre position: nombre position + (-100@0).
apellido position: nombre position + (0@40).
dni position: apellido position + (0@40).

nombre font: font.
apellido font: font.
dni font: font.


self addMorph: nombre; addMorph: apellido; addMorph: dni.

