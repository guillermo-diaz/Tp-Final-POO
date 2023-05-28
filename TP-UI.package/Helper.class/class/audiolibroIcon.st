as yet unclassified
audiolibroIcon
|m container| 
			m := (self iconNamed: #smallVolume) asMorph.  
			container := Morph new.
			container extent: m extent + (6@0).
			container color: Color transparent.
			m left: container left; bottom: container bottom.
			container addMorph: m.
			^ container