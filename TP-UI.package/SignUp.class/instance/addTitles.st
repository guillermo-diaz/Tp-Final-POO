adding
addTitles 
|title1 title2 title3 title4 title5 font col| 
col := OrderedCollection new.
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 10.5).
				
title1 := StringMorph contents: 'Nombre'.
title2 := StringMorph contents: 'Apellido'.
title3 := StringMorph contents: 'DNI'.
title4 := StringMorph contents: 'Contraseña'. 
title5 := StringMorph contents: '¿Desea ser plus?'.
col add: title1; add: title2; add: title3; add: title4; add: title5.

""
title1 left: nombre left; bottom: nombre top - 5.
title2 left: apellido left; bottom: apellido top - 5.
title3 left: dni left; bottom: dni top - 5.
title4 left: contraseña left; bottom: contraseña top - 5.


"col do: [ :title| title position: title position - (0@25) ]."
col do: [ :title| title font: font ].
title5 left: nombre left; top: contraseña bottom + 30.

self addMorph: title1; addMorph: title2; addMorph: title3;addMorph: title4;
addMorph: title5.