printing
returnDataWithDelimiter: aDelimiter 
	| aStream |
	aStream := String new writeStream.
	self printDataOn: aStream withDelimiter:';'.
	^aStream contents