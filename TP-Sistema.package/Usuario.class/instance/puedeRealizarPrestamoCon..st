as yet unclassified
puedeRealizarPrestamoCon: colLibros 
(self estaSuspendido or: (colLibros size > 5 or:((self verificarLibros: colLibros)not ))) ifTrue: [ ^false.].
colLibros detect: [:libro | libro esAudiolibro] ifFound: [^ self puedePedirAudiolibros] ifNone:[^true].