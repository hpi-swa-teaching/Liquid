modifying
update: aSymbol

	aSymbol = #participants ifTrue: [self changed: #participantList]
