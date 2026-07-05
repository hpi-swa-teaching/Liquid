modifying
closePoll

	| poll |
	poll := LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ 'This poll does not exist.'].
	poll closeWithPassword: (LQPasswordManager default
		findPasswordFor: self currentPollID
		ifAbsent: [^ UIManager default inform: 'You don''t have access to this poll.']).
	(poll isOpen not and: [poll requiresAuthentication])
		ifTrue: [LQMailDialog openResultMailWithPoll: poll].
	self changed: #closePollButtonEnabled