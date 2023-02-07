adding
addTitles 
|font logout|
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 14).
				
logout := StringMorph contents: 'Cerrar Sesión' font: (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 13). 
logout color: Color white.
nombre := StringMorph contents: 'Nombre: '. 
apellido := StringMorph contents: 'Apellido: '.
dni := StringMorph contents: 'Dni: '.

nombre center: rectangulo center.
nombre position: nombre position + (-100@0).
apellido position: nombre position + (0@40).
dni position: apellido position + (0@40).
logout center: botonLogout center.

nombre font: font.
apellido font: font.
dni font: font.

botonLogout addMorph: logout.
self addMorph: nombre; addMorph: apellido; addMorph: dni.

