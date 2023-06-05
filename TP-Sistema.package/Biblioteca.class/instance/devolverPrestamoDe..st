actions
devolverPrestamoDe: unUsuario 
(self prestamosActivosDe: unUsuario) detect: [ :pres| pres contieneAudiolibros not ] ifFound: [:pres | pres devolverLibros. pres fechaEntrega: Date today] ifNone: [ ^false ].
^ true
