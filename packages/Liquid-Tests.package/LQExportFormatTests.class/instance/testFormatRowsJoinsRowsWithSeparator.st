testing
testFormatRowsJoinsRowsWithSeparator

	| rows crlf |
	crlf := String with: Character cr with: Character lf.
	rows := { #('a' 'b'). #('c' 'd') }.
	self assert: (LQExportFormat csv formatRows: rows) equals: 'a,b', crlf, 'c,d'