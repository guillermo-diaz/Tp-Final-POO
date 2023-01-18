accessing
tienePrestamoActivo: user 
(self prestamosActivosDe: user) ifEmpty: [ ^false ] ifNotEmpty: [ ^true ] 