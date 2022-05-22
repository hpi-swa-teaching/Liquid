as yet unclassified
newFromCollection: aCollection

	"Sollten sicherstellen, dass drei Einträge in Collection"
	|user|
	user := self new.
	(aCollection size == 3)
	ifTrue: [user id: (aCollection first).
				user name: (aCollection second).
				user group: (aCollection third)]
	ifFalse: [self halt.].
	
	^ user