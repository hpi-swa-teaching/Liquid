communication
urlForPollWithId: aString

	^ self url, '/?id=', aString, '&token=', self token