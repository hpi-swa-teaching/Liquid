testing
testMailText

	self mailDialog rawMailText: 'Hello, this is the text of an email'.
	self assert: self mailDialog rawMailText equals: 'Hello, this is the text of an email'.