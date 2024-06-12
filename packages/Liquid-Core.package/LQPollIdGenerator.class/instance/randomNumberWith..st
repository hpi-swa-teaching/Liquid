generation
randomNumberWith: randomGen 
	| randomNumber |
	randomNumber := randomGen nextInt: 10.
	^ randomNumber asString
	