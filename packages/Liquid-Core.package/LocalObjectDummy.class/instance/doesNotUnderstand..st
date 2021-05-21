as yet unclassified
doesNotUnderstand: aMessage
	self class emulateNetwork.
	^ aMessage sendTo: object
	