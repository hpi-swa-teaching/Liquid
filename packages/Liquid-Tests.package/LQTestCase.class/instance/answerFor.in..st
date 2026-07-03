helper methods
answerFor: aNotification in: aCollectionOfAssociations

	| spec |
	spec := aCollectionOfAssociations
		detect: [:assoc | aNotification messageText asString includesSubstring: assoc key]
		ifNone: [^ true].
	(spec value isKindOf: OrderedCollection) ifTrue: [^ spec value removeFirst].
	^ spec value