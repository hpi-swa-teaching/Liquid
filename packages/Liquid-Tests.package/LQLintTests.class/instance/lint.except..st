helper methods
lint: aLinterRule except: aCollectionOfClasses

	| testObjects temporaryTestRunner |
	
	testObjects := self findTestObjects select:
		[:aTestClassObject |
			(aCollectionOfClasses includes: aTestClassObject testClass) not].
	temporaryTestRunner := SLTestRunner new environment: SLDefaultEnvironment new.
	temporaryTestRunner runOnTests: {aLinterRule} andTestObjects: testObjects.
	^ Dictionary new
		addAll: (testObjects collect:
			[:testObject |
			Association key: testObject testClass name
						value: (testObject resultValueOf: aLinterRule)]);
		yourself