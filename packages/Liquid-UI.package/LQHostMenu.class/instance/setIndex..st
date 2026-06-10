accessing
setIndex: index

	self currentPoll: index.
	self stopRefreshingVisualization.
	self changed: #buildVisualization.
	self changed: #pollIDString.
	self changed: #getIndex.
	self changed: #mailDialogButtonEnabled.
	self changed: #closePollButtonEnabled.
	self changed: #matchingPreferencesButtonEnabled.
	self changed: #pollSelected.
	self changed: #wordCloudToggleEnabled.
	self changed: #editPollButtonEnabled

