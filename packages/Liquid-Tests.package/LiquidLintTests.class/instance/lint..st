as yet unclassified
lint: aLinterRule

	|testRunner testObjects |
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testObjects := self findTestObjects.
	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.

	^ (testObjects
		collect: [ :testObject | testObject resultOf: aLinterRule ])
		collect: [ :result | result value ]