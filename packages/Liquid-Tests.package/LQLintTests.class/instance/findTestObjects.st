helper methods
findTestObjects

	^ self objectsToTest ifNil: [ | objects blacklist |
		blacklist := {#WeakSmalltalkParser}.
		
		objects := SystemNavigation default allClasses select:
			[:x |
				(x class category beginsWith: 'Liquid') and: (blacklist includes: x name) not].
		
		 self objectsToTest: (objects collect: [:aObject | aObject as: SLTestObject])]