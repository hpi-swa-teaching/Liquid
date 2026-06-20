printing
printData

	| stream |
	stream := String new writeStream.
	self exportValue do: [:choice | stream nextPutAll: choice] separatedBy: [stream nextPutAll: ':'].
	^ stream contents