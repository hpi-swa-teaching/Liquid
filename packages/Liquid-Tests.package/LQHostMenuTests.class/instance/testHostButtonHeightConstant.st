testing
testHostButtonHeightConstant
	| menu height |
	menu := LQHostMenu new.
	height := menu hostButtonHeight.
	
	self assert: height isFloat.
	self assert: (height > 0.0 and: [height < 1.0]).