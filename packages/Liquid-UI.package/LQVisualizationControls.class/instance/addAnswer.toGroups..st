accessing
addAnswer: anAnswer toGroups: aCollection

	| group |
	group := aCollection detect: [:each | each first answer = anAnswer answer] ifNone: [nil].
	group ifNil: [aCollection add: {anAnswer. 1}] ifNotNil: [
		group at: 2 put: group second + 1.
		((anAnswer respondsTo: #wasSubmittedOnOriginalQuestion) and: [anAnswer wasSubmittedOnOriginalQuestion]) ifTrue: [
			group
				at: 1
				put: anAnswer]]