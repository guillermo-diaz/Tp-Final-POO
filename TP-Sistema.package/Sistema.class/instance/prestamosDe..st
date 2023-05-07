as yet unclassified
prestamosDe: unUsuario 
^ colBibliotecas inject: (OrderedCollection new) into: [ :prestamos :biblio| prestamos addAll:(biblio prestamosActivosDe: unUsuario). prestamos]