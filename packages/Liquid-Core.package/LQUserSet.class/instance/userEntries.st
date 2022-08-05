accessing
userEntries

	userEntries ifNil: [self userEntries: OrderedCollection new].
	^ userEntries