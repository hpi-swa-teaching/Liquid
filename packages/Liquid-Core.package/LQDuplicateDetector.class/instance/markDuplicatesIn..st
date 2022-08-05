duplicate-detection
markDuplicatesIn: aChoiceList

	| duplicates choiceDescriptions |
	
	choiceDescriptions := aChoiceList collect: [:value | value description].
	
	duplicates := self identifyDuplicates: choiceDescriptions.
	
	^ (self mark: duplicates in: aChoiceList with: (TextColor color: Color red))