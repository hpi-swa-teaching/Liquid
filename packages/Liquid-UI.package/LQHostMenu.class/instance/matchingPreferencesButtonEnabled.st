toolbuilder
matchingPreferencesButtonEnabled

	| poll |
	self pollSelected ifFalse: [^ false].
	poll := LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ false].
		poll isOpen ifTrue: [^ false].
	^ poll questionList anySatisfy: [:q | q isPriorityQuestion]