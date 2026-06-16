system introspecting
classOrTraitFrom: environment pattern: pattern label: label
	
	^ ((SystemNavigation for: environment) allClassesAndTraitsMatching: pattern)
		ifEmpty: [nil]
		ifNotEmpty: [:results |
			results size = 1
				ifTrue: [results first]
				ifFalse: [self
							chooseFrom: (results collect: [:each | 
								each isDeprecated
									ifTrue: [each name asText addAttributesForDeprecation]
									ifFalse: [each name]])
							values: results
							title: label]]