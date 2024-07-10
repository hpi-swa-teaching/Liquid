accessing
currentLink
	self currentPoll = 0
		ifFalse: [^ 'http://', NetNameResolver localAddressString , ':8000/' , self currentPollID asText]
			