accessing
src: route [
^self fromStream:((File named: route asFileReference fullName ) readStream)
]