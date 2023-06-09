adding
addButtons 
volver := self getButtonReturn.
devolverLibros := Button stringMorphText: self devolverLibrosTitle color: theme button2  extent: 105@30.
devolverAudiolibros := Button stringMorphText: self devolverAudiolibrosTitle  color: theme button2 extent: 130@30.
devolverLibros rounded.
devolverAudiolibros rounded.

devolverLibros top: panelInfo bottom + 15; left: panelInfo left.
devolverAudiolibros top: devolverLibros top; right: panelInfo right.

self addMorph: volver; addMorph: devolverLibros; addMorph: devolverAudiolibros. 

volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (UserMenu sistema: sistemaGestor user: usuario)
	 ].
devolverLibros mouseAction: [ 
	selectedBiblio ifNotNil: [ 
		|pres|
		aviso ifNotNil: [ 
				self removeMorph: aviso.
				 ].
		pres := (selectedBiblio devolverPrestamoDe: usuario).
		
		(pres isNotNil)ifTrue: [
			(pres fechaMax < Date today) ifTrue: [usuario suspender: sistemaGestor kDias].
			
			aviso := 'Libros devueltos!' asMorph.
			aviso color: Color white.
			self actualizarColorBoton.
			self actualizarPanel.
			] ifFalse: [
			aviso := 'Error' asMorph.
			aviso color: Color red.
			].
			aviso center: devolverLibros center; top: devolverLibros bottom + 2.
			self addMorph: aviso.
		
		 ].
	 ].
devolverAudiolibros mouseAction: [ 
	selectedBiblio ifNotNil: [ 
		|pres|
		aviso ifNotNil: [ 
				self removeMorph: aviso.
				 ].
			pres := (selectedBiblio devolverPrestamoAudiolibrosDe: usuario ).
			pres isNotNil ifTrue: [
			(pres fechaMax < Date today) ifTrue: [usuario suspender: sistemaGestor kDias].
			
			aviso := 'Audiolibros devueltos!' asMorph.
			aviso color: Color white.
			self actualizarColorBoton.
			self actualizarPanel.
			] ifFalse: [
			aviso := 'Error' asMorph.
			aviso color: Color red.
			].
			aviso center: devolverAudiolibros center; top: devolverAudiolibros bottom + 2.
			self addMorph: aviso.
		
		 ].
	 ]

