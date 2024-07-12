query
containsUserWithToken: aString

	^ self userEntries anySatisfy: [:user | user token = aString]