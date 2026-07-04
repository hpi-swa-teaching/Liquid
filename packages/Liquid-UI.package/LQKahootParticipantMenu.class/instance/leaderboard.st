accessing
leaderboard

	(self quiz isNil or: [self quiz scores isNil]) ifTrue: [^ #()].
	^ (self quiz scores associations
		asSortedCollection: [:a :b | a value >= b value])
			collect: [:assoc | assoc key , ': ' , assoc value printString]
