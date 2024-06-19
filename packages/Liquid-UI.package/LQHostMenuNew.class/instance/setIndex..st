accessing
setIndex: index 
	self currentPoll: index.
			index = 0
				ifFalse: [self changed: #visualizationBuilder].
			self changed: #pollIDString.
			self changed: #getIndex