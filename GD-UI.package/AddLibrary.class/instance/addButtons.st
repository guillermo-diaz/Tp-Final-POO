adding
addButtons 
volver := self getButtonReturn.

volver bottom: self bottom -15 ; left: self left +15.

self addMorph: volver. 

volver mouseAction: [ 
	self owner delete.
	self delete.
	(UserMenu user: usuario) openInWindowLabeled: 'Menu de Usuario'
	 ]