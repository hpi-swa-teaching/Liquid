system primitives
doesNotUnderstand: aMessage
	
	|delay|
	delay := 80.
	Delay forMilliseconds: delay.
	^ aMessage sendTo: self object