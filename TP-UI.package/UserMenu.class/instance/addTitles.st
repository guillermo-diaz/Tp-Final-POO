adding
addTitles 
|font logout name surname d|
font := Helper getFontWithSize: 14.
				
logout := StringMorph contents: 'Cerrar Sesión' font: ((Helper getFontWithSize: 13) weightValue: 800). 
logout color: Color white.
name := 'Nombre:  '.
surname := 'Apellido:  '.
d := 'DNI:  '.

"en caso de que se abra sin usuario no va a mostrar nada "
usuario ifNotNil: [ 
	name := name , usuario nombre.
	surname := surname, usuario apellido .
	d := d, usuario dni asString].

nombre := StringMorph contents: name. 
apellido := StringMorph contents: surname.
dni := StringMorph contents: d.


nombre center: rectangulo center; left: rectangulo left + 30.
apellido top: nombre bottom + 25; left: rectangulo left + 30.
dni top: apellido  bottom + 25; left: rectangulo left + 30.
logout center: botonLogout center.

nombre font: font.
apellido font: font.
dni font: font.

botonLogout addMorph: logout.
self addMorph: nombre; addMorph: apellido; addMorph: dni.

