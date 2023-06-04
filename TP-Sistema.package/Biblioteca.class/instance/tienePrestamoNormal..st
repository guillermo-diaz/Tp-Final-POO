accessing
tienePrestamoNormal: user 
"solo para test"
(self prestamosActivosDe: user) detect: [ :pres | (pres contieneAudiolibros not)   ] ifNone: [ ^false ].
^true