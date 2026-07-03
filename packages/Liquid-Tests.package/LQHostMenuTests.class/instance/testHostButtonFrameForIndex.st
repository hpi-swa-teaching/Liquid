testing
testHostButtonFrameForIndex
	| menu count frame |
	menu := LQHostMenu new.
	count := menu numberOfHostButtons.
	
	1 to: count do: [:index |
		frame := menu hostButtonFrameForIndex: index.
		
		self assert: (frame isKindOf: LayoutFrame) 
			description: 'Method must return a valid LayoutFrame object'.
		self assert: frame leftFraction >= 0.0 
			description: 'Button frame must not exceed the left screen boundary'.
		self assert: frame rightFraction <= 1.0 
			description: 'Button frame must not exceed the right screen boundary'.
		self assert: frame topFraction >= 0.0 
			description: 'Button frame must not exceed the top screen boundary'.
		self assert: frame bottomFraction <= 1.0 
			description: 'Button frame must not exceed the bottom screen boundary'.
	].