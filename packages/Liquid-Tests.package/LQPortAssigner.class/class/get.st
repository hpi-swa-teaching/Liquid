accessing
get

	LastPort ifNil: [LastPort := 10000].
	LastPort := LastPort + 1.
	^ LastPort