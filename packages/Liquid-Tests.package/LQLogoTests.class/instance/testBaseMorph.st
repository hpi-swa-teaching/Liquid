testing
testBaseMorph
	| baseMorph |
	baseMorph := self instance baseMorph.
	self assert: baseMorph isNil not.
	self assert: baseMorph class equals: Morph.
	self assert: baseMorph color equals: Color transparent.
	self assert: baseMorph extent equals: self instance minimumLogoSize