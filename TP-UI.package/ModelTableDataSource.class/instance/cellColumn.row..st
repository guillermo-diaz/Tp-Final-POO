initialization
cellColumn: columnIndex row: rowIndex
|icon celda elem| 


elem := self elementAt: rowIndex.
celda := FTCellMorph new addMorph: (self getString: elem at: columnIndex id) asMorph.
icon := (self iconFor: elem at: columnIndex id). 
icon ifNotNil: [celda addMorph: icon asMorph].
^ celda