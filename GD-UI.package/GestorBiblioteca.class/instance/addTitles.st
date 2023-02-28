adding
addTitles 
|title1 title2 font|
font := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 12).
title1 := StringMorph contents: 'DNI'. 
title2 := StringMorph contents: 'Contraseña'.
title1 font: (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 11)..
title2 font: font.

title1 center: inDni center; bottom: inDni top - 5. 
title2 center: inContra center; bottom: inContra top -5.

 
self addMorph: title1 ; addMorph: title2.