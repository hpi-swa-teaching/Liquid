communication
doesNotUnderstand: aMessage
	Delay forMilliseconds: 150.
	^ aMessage sendTo: object
	