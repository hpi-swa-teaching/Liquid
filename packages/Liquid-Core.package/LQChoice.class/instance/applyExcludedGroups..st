modifying
applyExcludedGroups: aGroupCollection

	| joined |
	self excludedGroups: aGroupCollection.
	aGroupCollection isEmpty ifTrue: [^ self rawString: self description].
	joined := ''.
	aGroupCollection do: [:each | joined := joined, each, ','] separatedBy: [].
	joined := joined copyFrom: 1 to: joined size - 1.
	self rawString: self description, ' [', joined, ']'