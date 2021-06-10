helpers
lint: aLinterRule except: aCollectionOfClasses 
	| testObjects |
	testObjects := self findTestObjects
				select: [:aTestClassObject | (aCollectionOfClasses includes: aTestClassObject testClass) not].
	testRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	testRunner runOnTests: {aLinterRule} andTestObjects: testObjects.
	^ (testObjects
		collect: [:testObject | testObject resultOf: aLinterRule])
		collect: [:result | result value]