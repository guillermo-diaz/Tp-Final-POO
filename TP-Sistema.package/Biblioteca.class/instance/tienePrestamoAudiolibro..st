accessing
tienePrestamoAudiolibro: user 
"solo para test"
(self prestamosActivosDe: user) detect: [ :pres | pres contieneAudiolibros] ifNone: [ ^false ].
^true