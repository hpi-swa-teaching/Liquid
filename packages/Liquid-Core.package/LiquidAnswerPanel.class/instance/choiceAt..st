as yet unclassified
choiceAt: anIndex
	^ selectedChoices includes: (self choiceList at: anIndex ifAbsent: [^ false])