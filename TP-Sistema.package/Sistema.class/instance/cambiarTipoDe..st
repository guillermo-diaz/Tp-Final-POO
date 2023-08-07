as yet unclassified
cambiarTipoDe: unUsuario
(self existeUsuario: unUsuario ) ifTrue: [ 
	|user| 
	colUsuarios remove: unUsuario.
(unUsuario esPlus) ifTrue: [.
	user := (Usuario crearUsuarioDni: unUsuario dni nombre: unUsuario nombre apellido: unUsuario apellido  contra: unUsuario contraseña).
	] ifFalse: [ 
	user := (UsuarioPlus crearUsuarioDni: unUsuario dni nombre: unUsuario nombre apellido: unUsuario apellido contra: unUsuario contraseña fecha: (Date today addDays: 30)) ].
user bibliotecasInteres: unUsuario bibliotecasInteres.
colUsuarios add: user.
self changed: colUsuarios.
^ true
].
^ false