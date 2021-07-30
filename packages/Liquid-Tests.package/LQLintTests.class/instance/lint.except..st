helpers
lint: aLinterRule except: aCollectionOfClasses

	| testObjects testRunner |
	testObjects := self findTestObjects select: [:aTestClassObject | (aCollectionOfClasses includes: aTestClassObject testClass) not].
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.
	^ Dictionary new
		addAll: (testObjects collect: [:testObject | Association key: testObject testClass name value: (testObject resultValueOf: aLinterRule)]);
		yourself