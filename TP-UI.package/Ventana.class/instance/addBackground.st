adding
addBackground 
 self color: Color white.
[
    |fondo |
 
fondo:=(Form fromFileNamed: theme background) asMorph.
fondo top: self top; left: self left.
	
	self addMorphBack: fondo.
	
] on: FileDoesNotExistException  do: [ :ex |
 |header  lineHeader icon figure figure2 |


header := Morph new color: theme header; extent: 800@128.
header top: self top; left: self left.

lineHeader := Morph new color: theme headerLine; extent: 800@13.
lineHeader left: header left; bottom: header bottom.
header addMorph: lineHeader.
icon := EllipseMorph new.
icon extent: 102@103; color: theme icon.
icon left: header left + 10; top: header top +5. 


figure := PolygonMorph
		vertices: {26@80. 60@20. 95@80 }
		color: (Color fromString: 'e59341')
		borderWidth: 2
		borderColor: (Color fromString: 'e59341').
figure2 := PolygonMorph
		vertices: {26@40. 60@95. 95@40 }
		color: (Color fromString: 'e59341')
		borderWidth: 2
		borderColor: (Color fromString: 'e59341').
icon addMorph: figure; addMorph: figure2.
header addMorph: icon. 
self addMorph: header.
  
	
]
	