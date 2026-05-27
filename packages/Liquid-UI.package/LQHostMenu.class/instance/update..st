accessing
update: aspect

	aspect = #getIndex
		ifTrue: [^ self changed: #wordCloudToggleEnabled].
	self changed: #pollList