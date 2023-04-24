as yet unclassified
RoundedTable: aTable aColor: col 
^ (Morph new) extent: aTable extent + (4@4); color: col; borderStyle: (self getBorderStyle: col); addMorphCentered: aTable 