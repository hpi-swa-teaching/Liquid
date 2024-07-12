helper methods
createCollectionTwo

	^ {
		LQChoice newFrom: 'Hallo'.
		LQChoice newFrom: 'Welt'.
		LQChoice newFrom: '!'.
		LQChoice newFrom: 'Hallo [123]'} asOrderedCollection