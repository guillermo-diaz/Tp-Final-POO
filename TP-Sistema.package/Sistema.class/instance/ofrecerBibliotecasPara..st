as yet unclassified
ofrecerBibliotecasPara: unUsuario 
|bibliotecasInteres| 
bibliotecasInteres := unUsuario bibliotecasInteres.
^ colBibliotecas reject: [:biblio|  bibliotecasInteres includes: biblio].
