running
create 
|sistema | 
sistema := Sistema Precargado.
	
^ (self new) initialize; addBackground; addMorphCentered: (Home sistema: sistema) ;openInWindowLabeled: 'Gestor de Bibliotecas' 