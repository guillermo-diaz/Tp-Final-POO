initialization
addButtons 
|col font font2 array cerrarSesion logicalFont cad|
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11.5).


col := (Color r: 193 g: 193 b: 193).

array := OrderedCollection new.

cerrarSesion := Button nombre: 'Cerrar Sesion'  colour: Color red dimension: 100@30.

addBiblio := Button nombre: 'Bibliotecas de Interés' colour: (self colorShapesAndButtons)  dimension: 200@30 font: font.
addBiblio color: self colorShapesAndButtons .
pedirPrestamo := Button nombre: 'Pedir Prestamo' colour: (self colorShapesAndButtons) dimension: 200@30 font: font.
devolverPrestamo := Button nombre: 'Devolver Prestamo' colour: (self colorShapesAndButtons) dimension: 200@30 font: font.
cambiarTipoUsuario := Button nombre: 'Cambiar Tipo de Usuario' colour: (self colorShapesAndButtons) dimension: 200@30 font: font.

array add: addBiblio; add: pedirPrestamo ; add: devolverPrestamo ;add: cambiarTipoUsuario.

array do: [ :a| a borderWidth: 2; borderColor:  self colorBorderShapesAndButtons ; extent: 300@40].

addBiblio center: self center.
addBiblio position: addBiblio position - (200@60).
pedirPrestamo position: addBiblio position + (0@80).
devolverPrestamo position: pedirPrestamo position  + (0@80).
cambiarTipoUsuario position: devolverPrestamo  position  + (0@80).
cerrarSesion center: rectangulo center.
cerrarSesion position: cerrarSesion position + (0@120).

"cerrarSesion font: font2."

array do: [:morph | self addMorph: morph ].
self addMorph: cerrarSesion.
