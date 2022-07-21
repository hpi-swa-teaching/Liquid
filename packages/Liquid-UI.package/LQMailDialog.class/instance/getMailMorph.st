toolbuilder
getMailMorph

	^self dependents 
		detect: [:dependent | (dependent knownName = self class mailTextInputName)]
		ifNone: [nil]