actions
devolverPrestamoAudiolibrosDe: unUsuario 
(self prestamosActivosDe: unUsuario) detect: [ :pres| pres contieneAudiolibros] ifFound: [:pres | pres devolverLibros; fechaEntrega: Date today. ^ pres ] ifNone: [ ^nil ].

