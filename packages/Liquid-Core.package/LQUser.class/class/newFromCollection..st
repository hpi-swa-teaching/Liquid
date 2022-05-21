as yet unclassified
newFromCollection: aCollection

	"Sollten sicherstellen, dass drei Einträge in Collection"
	|user|
	user := self new.
	(aCollection size == 3)
	ifTrue: [user id: (aCollection at: 1).
				user name: (aCollection at: 2).
				user group: (aCollection at: 3)]
	ifFalse: [self halt.].
	
	^ user