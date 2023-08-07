as yet unclassified
agregarUsuario: user 
colUsuarios detect: [ :usuario| usuario esIgual: user] ifFound: [ ^false ] ifNone: [ colUsuarios add: user ]. 
self changed: colUsuarios.
^ true