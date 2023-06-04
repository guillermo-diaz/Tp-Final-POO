as yet unclassified
puedeRealizarPrestamoCon: colLibros 
(self estaSuspendido or: (colLibros size > 5)) ifTrue: [ ^false.].
colLibros detect: [:libro | libro esAudiolibro] ifFound: [^ self puedePedirAudiolibros] ifNone:[^true].