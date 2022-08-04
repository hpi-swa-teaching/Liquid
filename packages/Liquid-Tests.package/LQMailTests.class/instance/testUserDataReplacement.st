testing
testUserDataReplacement

	| testText replacedText |
	testText := self user1 mailMapping keys asString.
	replacedText := self user1 mailMapping values asString.
	self assert: (self mailDialog injectUserDataFrom: self user1 into: testText) equals: replacedText