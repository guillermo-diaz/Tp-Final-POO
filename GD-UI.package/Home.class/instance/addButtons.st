adding
addButtons 
|font| 
font := (Helper getFontWithSize: 13) weightValue: 900.
usuario := Button stringMorphText: (StringMorph contents: 'Usuario' font: font) color: self colorButtons extent: 150@40.
verSistema := Button stringMorphText: (StringMorph contents: 'Sistema' font: font) color: self colorButtons extent: 150@40.
usuario borderStyle: (Helper getBorderStyle: self colorBorderButtons width: 2).
verSistema borderStyle: (Helper getBorderStyle: self colorBorderButtons width: 2).

usuario top: self top + 330; left: self left + 200.
verSistema top: self top + 330; right: self right - 200.
self addMorph: usuario; addMorph: verSistema .

usuario mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (Login sistema: sistemaGestor ) ]
