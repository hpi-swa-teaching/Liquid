printing
printData

	| stream |
	stream := String new writeStream.
	self printDataOn: stream.
	^ stream contents