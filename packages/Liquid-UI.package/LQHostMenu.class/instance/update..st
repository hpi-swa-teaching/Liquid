accessing
update: aspect

	aspect = #getIndex ifTrue: [
		self changed: #wordCloudToggleEnabled.
		^ super update: aspect
	].
	
	aspect = #pollList ifTrue: [
		self changed: #pollList.
		^ super update: aspect
	].
	
	super update: aspect