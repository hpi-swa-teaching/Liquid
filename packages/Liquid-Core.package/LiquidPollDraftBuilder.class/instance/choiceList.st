as yet unclassified
choiceList
	^(self question choiceList inject: '' into: [:total :value | total,  value, Character cr]) asText