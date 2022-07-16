testing
testMailSender

	self mailDialog mailSender: 'vorname.nachname@example.com'.
	self assert: self mailDialog mailSender equals: 'vorname.nachname@example.com'