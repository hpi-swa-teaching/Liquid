ui requests
chooseOptionFromLabeledValues: aDictionary title: aString
	"Choose a key from the given dictionary. Answer the corresponding value."
	^self chooseOptionFrom: aDictionary keys values: aDictionary values title: aString