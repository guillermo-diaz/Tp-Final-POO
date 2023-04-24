as yet unclassified
crearUsuarioDni: unDni nombre: unNombre apellido: unApe contra: contra fecha: fecha
|user| 
user := self new.
user iniDni: unDni Nombre: unNombre apellido: unApe contra: contra.
user iniFechaVencimiento: fecha.
^ user