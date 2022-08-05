building
newFromCollection: aCollection
	
	|user|
	
	user := self new.
	(aCollection size == self csvRecordSize)
	ifTrue: [user firstname: (aCollection first).
				user surname: (aCollection second).
				user mail: (aCollection third).
				user group: (aCollection fourth)]
	ifFalse: [Error new signal: 'Failed to parse csv.'].
	
	^ user