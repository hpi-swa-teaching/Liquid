accessing
pollIDString

	self currentPoll isZero ifFalse: [
		^ self currentPollID asString].
	self pollList ifEmpty: [^ 'No Polls on your Server!'].
	^ 'No poll selected!'