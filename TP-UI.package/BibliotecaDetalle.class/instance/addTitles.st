adding
addTitles 
|name address repre tel font prestamos| 
	font := (Helper getFontWithSize: 12).

	name := 'Nombre: '.
	address  := 'Direccion: '.
	tel := 'Telefono: '.
	repre := 'Representante: '.
	
	
biblioteca ifNotNil: [ 
	name := name , biblioteca nombre.
	address := address , biblioteca direccion .
	tel := tel, biblioteca telefono.
	repre := repre , biblioteca representante.
	
	
	 ].

nombre := StringMorph contents: name font: font.
direccion := StringMorph contents: address font: font.
telefono := StringMorph contents: tel font: font.
representante := StringMorph contents: repre font: font.
prestamos := StringMorph contents: 'Prestamos' font: ((Helper getFontWithSize: 13) forceBold ).

representante  left: containerInfo left + 20; bottom: verLibros top - 30.
telefono left: representante left; bottom: representante top - 30.
direccion left: telefono left; bottom: telefono top - 30.
nombre left: direccion left; bottom: direccion top - 30.
prestamos center: panelPrestamos center; bottom: panelPrestamos top - 10.

containerInfo addMorph: nombre; addMorph: direccion ; addMorph: telefono ; addMorph: representante; addMorph: prestamos  .

