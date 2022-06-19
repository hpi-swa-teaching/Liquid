as yet unclassified
containsUserWithID: aString

	^ self userEntries anySatisfy: [:user | user id = aString]
	