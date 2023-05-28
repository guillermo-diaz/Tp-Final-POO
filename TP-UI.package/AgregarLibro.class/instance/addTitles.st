adding
addTitles  
|nombre editorial año autor col font audio| 
col := OrderedCollection new.
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 10.5).
				
nombre := StringMorph contents: 'Nombre del libro' font: font.
editorial := StringMorph contents: 'Editorial' font: font.
año := StringMorph contents: 'Año' font: font.
autor := StringMorph contents: 'Autores' font: font. 
audio := StringMorph contents: 'Audiolibro' font: font. 

nombre bottom: inputNombre top ; left: inputNombre  left.
editorial bottom: inputEditorial top ; left: inputEditorial left.
año bottom: inputAño  top ; left: inputAño left.
autor bottom: inputAutores top ; left: inputAutores left.
audio bottom: audiolibro bottom; left: audiolibro right + 10.

rectangulo addMorph: nombre; addMorph: editorial; addMorph: año; addMorph: autor; addMorph: audio.

