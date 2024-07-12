accessing
currentLink

	self currentPoll isZero ifFalse: [^ 'http://', NetNameResolver localAddressString, ':8000/', self currentPollID asText]