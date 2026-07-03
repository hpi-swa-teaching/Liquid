toolbuilder
matchingPreferencesButtonEnabled
	"Active if a poll is selected and contains a Priority/preference Questio "

	| poll |
	self pollSelected ifFalse: [^ false].
	poll := LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ false].
		poll isOpen ifTrue: [^ false].
	^ poll questionList anySatisfy: [:q | q isPriorityQuestion]