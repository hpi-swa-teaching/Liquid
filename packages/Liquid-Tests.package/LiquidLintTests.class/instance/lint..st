helpers
lint: aLinterRule

	| testObjects |
	testObjects := self findTestObjects.
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.

	^ (testObjects
		collect: [ :testObject | testObject resultOf: aLinterRule ])
		collect: [ :result | result value ]