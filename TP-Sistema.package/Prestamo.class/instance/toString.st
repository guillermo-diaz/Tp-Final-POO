printing
toString 
|txt| 
txt := 'Libros: '.
self contieneAudiolibros ifTrue: [ txt:= 'Audioibros: ' ].
^ ('Usuario:  ', usuario apellido ,', ',usuario nombre,'\Fecha Registro:  ',fechaRegistro asString ,'\Fecha Limite:  ',fechaMax asString,'\',txt, self nombreLibros) withCRs

