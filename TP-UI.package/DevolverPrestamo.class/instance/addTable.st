adding
addTable 

usuario ifNotNil: [   
table := self tablaBibliotecasInteres: 200@280 columns: #(Nombre). 
table headerColor: self colorShapes.

table left: rectangulo left + 30 ; top: rectangulo top  + 30.

rectangulo addMorph: table . 
table setClick: [:index | 
	|prest|
	prest := ''. 
	((table elementAt: index) prestamosActivosDe: usuario) do: [ :prestamo| prest := prest, prestamo toString].
	
	panelInfo setText: prest.
	]
].