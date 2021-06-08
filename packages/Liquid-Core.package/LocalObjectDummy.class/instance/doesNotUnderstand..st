as yet unclassified
doesNotUnderstand: aMessage
	^ self emulateNetwork: (aMessage sendTo: object)
	