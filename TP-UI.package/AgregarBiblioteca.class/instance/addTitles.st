adding
addTitles 
|nombre ide direccion telefono repre font|
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 10.5).
	
ide := StringMorph contents: 'Identificador' font: font.			
nombre := StringMorph contents: 'Nombre' font: font.
direccion  := StringMorph contents: 'Direccion' font: font.
telefono  := StringMorph contents: 'Telefono' font: font.
repre  := StringMorph contents: 'Representante' font: font. 

ide bottom: inputIde top; left: inputIde left.
nombre bottom: inputNombre top; left: inputNombre left.
direccion bottom: inputDireccion top; left: inputDireccion left.
telefono bottom: inputTelefono top; left: inputTelefono left.
repre bottom: inputRepresentante top; left: inputRepresentante left.

rectangulo addMorph: ide; addMorph: nombre; addMorph: direccion ; addMorph: telefono ; addMorph: repre .