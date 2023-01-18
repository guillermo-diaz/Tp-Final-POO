as yet unclassified
GenerarListadoUsuariosRetrasados 
|list users| 
list := OrderedCollection new.
colBibliotecas do: [ :biblio| 
	users := biblio listaUsuariosRetrasados.
	users ifNotEmpty: [
		|aux| 
		aux := OrderedCollection new. "para saber de q biblioteca son lo agrego a otra coleccion"
		aux add: users.
		aux add: biblio.
		list add: aux]].
^ list