helpers
findTestObjects

	^ self testObjects ifNil: [ | objects blacklist |
		blacklist := {#WeakSmalltalkParser}.
		
		objects := SystemNavigation default allClasses select: [:x | (x class category beginsWith: 'Liquid') and: (blacklist includes: x name) not].
		
		self testObjects: (objects collect: [:aObject | aObject as: SLTestObject])]