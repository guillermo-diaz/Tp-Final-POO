adding
addButtons 
volver := self getButtonReturn.

volver bottom: self bottom -15 ; left: self left +15.

self addMorph: volver. 

volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (UserMenu sistema: sistemaGestor )
	 ]