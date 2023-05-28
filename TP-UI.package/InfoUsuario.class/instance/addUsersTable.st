adding
addUsersTable
sistemaGestor ifNotNil: [ 
	tableUsers := Table aModel: (ModelUser aCollection: (sistemaGestor colUsuarios)) aColumns: #('Nombre') asOrderedCollection  extent: 150@320.
	tableUsers headerColor: (Color fromString: 'FECC73')  .
	
	tableUsers bottom: panelPrestamos bottom; left: containerPrestamos left + 20.
	containerPrestamos addMorph: tableUsers.
	
	tableUsers setClick: [:index | 
	|info |
	"Panel prestamos"
	info := ''. 
	userActual  := (tableUsers elementAt: index).
	(userActual esPlus) ifTrue: [ 
			flagPlus ifFalse: [ 
				self addPlus
				 ]
		] ifFalse: [
		flagPlus ifTrue: [ 
			self removeMorph: plus.
			flagPlus := false.
			 ]
		].
	(sistemaGestor prestamosDe: userActual) do: [ :pres| info := info, pres toString, '\\' withCRs.].
	panelPrestamos setText: info.
	
	"info user"
	nombre contents: 'Nombre:  ', userActual nombre.
	apellido contents: 'Apellido:  ', userActual apellido.
	dni contents: 'DNI:  ', userActual dni asString.
	
	]
]


