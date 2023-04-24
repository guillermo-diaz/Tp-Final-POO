printing
toString 
^ ('Usuario:  ', usuario apellido ,', ',usuario nombre,'\Fecha Registro:  ',fechaRegistro asString ,'\Fecha Limite:  ',fechaMax asString,'\Libros:  \', self nombreLibros) withCRs

