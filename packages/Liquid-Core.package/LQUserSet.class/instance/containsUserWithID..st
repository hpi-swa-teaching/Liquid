query
containsUserWithID: aString

	^ self userEntries anySatisfy: [:user | user id = aString]
	