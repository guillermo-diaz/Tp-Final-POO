initialization
initializeColumns: colColumns model: model 

self initialize.
colColumns do: [:name | self addColumn: (FTColumn id: name)].
self intercellSpacing: 1;
beResizable;
vResizing: #spaceFill; hResizing: #spaceFill;
onAnnouncement: FTStrongSelectionChanged do: [ :ann | doubleClickBlock value: self selectedIndex ];
onAnnouncement: FTSelectionChanged do: [ :ann | clickBlock value: self selectedIndex ];
 dataSource: model.
			
model addDependent: self.
doubleClickBlock := [ :e | nil ]. 
clickBlock := [ :e | nil ].

			.
