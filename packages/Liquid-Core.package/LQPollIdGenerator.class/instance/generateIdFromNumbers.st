generation
generateIdFromNumbers
	| randomGen |
	randomGen := Random new.
	^ (self randomNumberWith: randomGen)
		, (self randomNumberWith: randomGen)
		, (self randomNumberWith: randomGen)
		, (self randomNumberWith: randomGen)
		, (self randomNumberWith: randomGen)
		