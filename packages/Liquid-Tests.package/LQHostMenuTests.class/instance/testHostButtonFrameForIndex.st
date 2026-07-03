testing
testHostButtonFrameForIndex
	| menu count frame |
	menu := LQHostMenu new.
	count := menu numberOfHostButtons.
	
	1 to: count do: [:index |
		frame := menu hostButtonFrameForIndex: index.
		
		self assert: (frame isKindOf: LayoutFrame).
		self assert: frame leftFraction >= 0.0.
		self assert: frame rightFraction <= 1.0.
		self assert: frame topFraction >= 0.0.
		self assert: frame bottomFraction <= 1.0.
	].