adding
addButtons 
volver := self getButtonReturn.

self addMorph: volver. 

volver mouseAction: [ 
	|ow| 
	ow := self owner.
	self delete.
	ow addMorphCentered: (UserMenu sistema: sistemaGestor user: usuario)
	 ]
