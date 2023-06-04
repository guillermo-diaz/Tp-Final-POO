as yet unclassified
actualizarPanel
selectedBiblio ifNotNil: [  
	|info prestamos p1 p2 prestNormal prestAudiolibro|
	info := ''. 
	prestamos := (selectedBiblio prestamosActivosDe: usuario).
(prestamos  isEmptyOrNil) ifTrue:[info := 'Información de prestamos: '] ifFalse: [  
	p1 := (prestamos at: 1).
	p1 contieneAudiolibros ifTrue: [prestNormal := p1] ifFalse: [prestAudiolibro := p1].
	
	info := info,p1 toString, '\\' withCRs.
	(prestamos size = 2) ifTrue: [
		p2 := (prestamos at: 2).
		p2 contieneAudiolibros ifTrue: [prestNormal := p2] ifFalse: [prestAudiolibro := p2].
		info := info,p2 toString.
	].
	].
panelInfo setText: info.
].