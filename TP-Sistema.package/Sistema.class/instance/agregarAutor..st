as yet unclassified
agregarAutor: unAutor 
colAutores detect: [ :autor| autor esIgual: unAutor] ifFound: [ ^false ] ifNone: [ colAutores add: unAutor  ]. 
self changed: colAutores.
^ true