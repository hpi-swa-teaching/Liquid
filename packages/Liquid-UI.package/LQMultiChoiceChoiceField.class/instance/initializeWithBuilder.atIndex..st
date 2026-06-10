initialize-release
initializeWithBuilder: aBuilder atIndex: anIndex
	builder := aBuilder.
	index := anIndex.
	aBuilder addDependent: self.
	^ self