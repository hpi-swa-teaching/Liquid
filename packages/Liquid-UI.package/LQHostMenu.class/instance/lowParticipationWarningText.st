accessing
lowParticipationWarningText
	| poll textStream warningString |
	
	self currentPoll isZero ifTrue: [^ ''].
	poll := LQRemotePollRepoServer pollRepo at: self currentPollID ifAbsent: [^ ''].
	
	(poll isOpen not and: [poll hasLowSampleSize]) ifTrue: [
		warningString := 'Low sample size (', poll answerSets size asString, ')'.
		textStream := TextStream on: Text new.
		textStream withAttribute: (TextColor color: Color red) do: [textStream nextPutAll: warningString].
		^ textStream contents
	].

	^ ''