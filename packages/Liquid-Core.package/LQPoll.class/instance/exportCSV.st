printing
exportCSV

	| stream |
	stream := WriteStream on: String new.
	self printDataOn: stream withDelimiter: ';'.
	^ stream contents