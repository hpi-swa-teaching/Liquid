ui requests
chooseFromLabeledValues: aDictionary title: aString
	"Choose a key from the given dictionary. Answer the corresponding value."
	^self chooseFrom: aDictionary keys values: aDictionary values title: aString