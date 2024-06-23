accessing
setIndex: index 
	self currentPoll: index.
			self changed: #buildVisualization.
			self changed: #pollIDString.
			self changed: #getIndex