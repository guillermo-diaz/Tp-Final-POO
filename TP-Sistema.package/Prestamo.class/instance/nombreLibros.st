printing
nombreLibros 
|libros| 
libros := ''.

colLibros do: [ :libro | libros := libros,'\ - ', libro toString withCRs.].

^ libros 


