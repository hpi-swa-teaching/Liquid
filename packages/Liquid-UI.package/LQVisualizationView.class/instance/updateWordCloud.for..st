visualization
updateWordCloud: aMorph for: aQuestion

	| frequencies signature |
	frequencies := self answerFrequenciesFor: aQuestion.
	signature := self wordCloudSignatureFor: frequencies.
	(aMorph valueOfProperty: #wordCloudSignature) = signature ifTrue: [^ self].
	aMorph setProperty: #wordCloudSignature toValue: signature.
	self populateWordCloud: aMorph withData: frequencies
