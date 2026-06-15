accessing
lowParticipationWarningText
	| poll threshold textStream warningString |
	threshold := 3.
	
	self currentPoll isZero ifTrue: [^ ''].
	poll := LQRemotePollRepoServer pollRepo at: self currentPollID ifAbsent: [^ ''].
	
	(poll isOpen not and: [poll answerSets size < threshold]) ifTrue: [
		warningString := 'Low sample size (', poll answerSets size asString, ')'.
		textStream := TextStream on: Text new.
		textStream withAttribute: (TextColor color: Color red) do: [textStream nextPutAll: warningString].
		^ textStream contents
	].

	^ ''