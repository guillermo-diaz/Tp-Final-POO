accessing
tienePrestamoActivo: user 
colPrestamos detect: [ :pres | (pres esDeUsuario: user) and: pres estaActivo  ] ifNone: [ ^false ].
^true