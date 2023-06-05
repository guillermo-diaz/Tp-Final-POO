as yet unclassified
GenerarListadoUsuariosRetrasados 
|list users| 
list := OrderedCollection new.
colBibliotecas do: [ :biblio| 
	users := biblio listaUsuariosRetrasados.
	users ifNotEmpty: [
		list add: {users. biblio}]].
^ list