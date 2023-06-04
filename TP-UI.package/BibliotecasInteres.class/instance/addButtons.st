adding
addButtons 
|text col| 
text := StringMorph contents: 'Agregar' font: ((Helper getFontWithSize: 10) forceBold).
text color: (Color fromString: '5d4129').
col := Color fromString: 'f0a422'.
agregar := Button stringMorphText: text color: (col) extent: 100@30.
agregar borderStyle: (Helper getBorderStyle: col width: 2 radius: 6).

volver := self getButtonReturn.

agregar top: barra top; right: rectangleContainer right - 25.

self addMorph: volver; addMorph: agregar. 

volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (UserMenu sistema: sistemaGestor user: usuario )
	 ].
agregar mouseAction: [ 
	|biblio| 
	biblio := barra selectedItem.
	(biblio) ifNotNil: [  
		usuario addBiblioteca: (listaBiblioteca at: biblio).
		listaBiblioteca removeKey: biblio.
		barra searchList: listaBiblioteca keys.  
		table refresh.
		barra changed.
	].
	 ] 