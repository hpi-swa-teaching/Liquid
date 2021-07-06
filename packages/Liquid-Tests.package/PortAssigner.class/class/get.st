as yet unclassified
get
	lastPort ifNil: [ lastPort := 10000 ].
	lastPort := lastPort + 1.
	^ lastPort