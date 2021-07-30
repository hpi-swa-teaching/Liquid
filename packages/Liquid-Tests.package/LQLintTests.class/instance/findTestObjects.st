helpers
findTestObjects

	^ testObjects ifNil: [
		| objects blacklist |
		blacklist := {#WeakSmalltalkParser}.
		
		objects := SystemNavigation default allClasses select: [:x | 
			(x class category beginsWith: 'Liquid') and: (x class category = 'Liquid-Tests') not and: (blacklist includes: x name) not ].
		
		testObjects := objects collect: [ :aObject | aObject as: SLTestObject]
	]