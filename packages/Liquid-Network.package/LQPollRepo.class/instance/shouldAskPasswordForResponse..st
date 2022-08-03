communication
shouldAskPasswordForResponse: aWebResponse

	^ (aWebResponse code = 401) and: [self token isNil]