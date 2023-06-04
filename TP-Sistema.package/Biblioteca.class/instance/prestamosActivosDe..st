accessing
prestamosActivosDe: user
^ colPrestamos select: [ :prestamo | (prestamo esDeUsuario: user) and: prestamo estaActivo]