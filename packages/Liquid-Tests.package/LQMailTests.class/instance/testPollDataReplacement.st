testing
testPollDataReplacement

	| testText replacedText |
	
	testText := self poll mailMapping keys asString.
	replacedText := self poll mailMapping values asString.
	self assert: (self mailDialog injectPollDataInto: testText) equals: replacedText