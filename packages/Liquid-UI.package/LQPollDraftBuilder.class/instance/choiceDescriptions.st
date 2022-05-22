accessing
choiceDescriptions

	^ (self question choiceDescriptions
		inject: ''
		into: [:total :value | total, value, Character cr]) asText