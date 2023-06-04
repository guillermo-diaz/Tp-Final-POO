actions
devolverAudiolibrosDe: unUsuario 
(self prestamosActivosDe: unUsuario) detect: [ :pres| pres contieneAudiolibros] ifFound: [:pres | pres devolverLibros; fechaEntrega: Date today] ifNone: [ ^false ].
^ true
