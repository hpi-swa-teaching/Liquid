accessing
choiceAt: anIndex

	^ self selectedChoices includes: (self choiceDescriptions at: anIndex ifAbsent: [^ false])