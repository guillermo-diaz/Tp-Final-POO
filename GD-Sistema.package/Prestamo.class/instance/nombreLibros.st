printing
nombreLibros 
|libros| 
libros := ' '.
colLibros do: [ :libro | libros := libros, libro nombre,'\ ' withCRs.].
^ libros 


