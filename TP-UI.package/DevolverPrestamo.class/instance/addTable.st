adding
addTable 

usuario ifNotNil: [   
table := self tablaBibliotecasInteres: 200@290 columns: #(Nombre). 
table headerColor: self colorShapes.

table left: rectangulo left + 30 ; top: rectangulo top  + 30.

rectangulo addMorph: table . 
table setClick: [:index | 
	|prestNormal prestAudiolibro p1 p2 prestamos info|
	info := ''. 
	prestamos := ((table elementAt: index) prestamosActivosDe: usuario).
	p1 := (prestamos at: 1).
	p1 contieneAudiolibros ifTrue: [prestNormal := p1] ifFalse: [prestAudiolibro := p1].
	
	info := info,p1 toString, '\\' withCRs.
	(prestamos size = 2) ifTrue: [
		p2 := (prestamos at: 2).
		p2 contieneAudiolibros ifTrue: [prestNormal := p2] ifFalse: [prestAudiolibro := p2].
		info := info,p2 toString.
	].
	
	
	
	panelInfo setText: info.
	]
].