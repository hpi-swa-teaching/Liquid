accessing
update: aspect

	aspect = #getIndex
		ifTrue: [self changed: #wordCloudToggleEnabled]
		ifFalse: [aspect = #pollList
			ifTrue: [self changed: #pollList]].
	super update: aspect