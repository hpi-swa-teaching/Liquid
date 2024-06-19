initialize-release
removeKey: key 
	self items
		removeKey: key
		ifAbsent: [self error].
	self changed: #pollList