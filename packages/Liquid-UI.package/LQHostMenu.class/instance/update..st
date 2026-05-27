accessing
update: aspect

	aspect = #getIndex
		ifTrue: [self changed: #wordCloudToggleEnabled].
	aspect = #pollList
		ifTrue: [self changed: #pollList].
	super update: aspect