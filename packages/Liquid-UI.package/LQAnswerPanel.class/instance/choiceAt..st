accessing
choiceAt: anIndex

	^ selectedChoices includes: (self choiceDescriptions at: anIndex ifAbsent: [^ false])