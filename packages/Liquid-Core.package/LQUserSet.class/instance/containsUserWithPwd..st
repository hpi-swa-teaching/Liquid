query
containsUserWithPwd: aString

	^ self userEntries anySatisfy: [:user | user pwd = aString]
	