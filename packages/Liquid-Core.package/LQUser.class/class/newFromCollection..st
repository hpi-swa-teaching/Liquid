as yet unclassified
newFromCollection: aCollection

	"Sollten sicherstellen, dass drei Einträge in Collection"
	|user|
	user := self new.
	(aCollection size == 4)
	ifTrue: [user firstname: (aCollection first).
				user surname: (aCollection second).
				user mail: (aCollection third).
				user group: (aCollection fourth).
				user pwd: UUID new asString]
	ifFalse: [self halt.].
	
	^ user