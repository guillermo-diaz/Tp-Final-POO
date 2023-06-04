as yet unclassified
checkLength 
|col| 
col := OrderedCollection new.
col add: (inputNombre input). col add: (inputIde input). col add: (inputDireccion input). col add: (inputTelefono input). col add: (inputRepresentante input). 
^  col allSatisfy: [ :cad | cad size <= 25].