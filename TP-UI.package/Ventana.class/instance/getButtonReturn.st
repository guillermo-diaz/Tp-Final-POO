as yet unclassified
getButtonReturn 
|volver fontVolver|
volver := Button new.
volver color: Color transparent; extent: 1000@50; borderWidth: 0.
fontVolver := (LogicalFont
				 familyName: StandardFonts defaultFont familyName
				 pointSize: 13).
				volver label: '←  Atrás' font: fontVolver .
				volver bottom: self bottom -15 ; left: self left +30.
^ volver