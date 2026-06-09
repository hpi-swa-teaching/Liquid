testing
testAssertTitleAvailable
	| otherDraft poll runningDraft |
	self pollDraft title: 'TitleAvailabilityTest'.
	self assert: (self pollDraft assertTitleAvailable: 'TitleAvailabilityTest' excluding: nil).
	self pollDraft saveToRepository.
	self assert: (self pollDraft assertTitleAvailable: 'TitleAvailabilityTest' excluding: nil) not.
	self assert: (self pollDraft assertTitleAvailable: 'TitleAvailabilityTest' excluding: self pollDraft).
	otherDraft := self pollDraft copyForNewPoll.
	self deny: otherDraft pollDraftId = self pollDraft pollDraftId.
	self assert: (otherDraft assertTitleAvailable: otherDraft title excluding: nil).
	runningDraft := LQPollDraft new title: 'RunningPollTitleTest'.
	poll := LQPoll newWithPollDraft: runningDraft.
	LQRemotePollRepoServer pollRepo items at: 'title-availability-running-poll' put: poll.
	self assert: (self pollDraft assertTitleAvailable: 'RunningPollTitleTest' excluding: nil) not.
	LQRemotePollRepoServer pollRepo removeKey: 'title-availability-running-poll' ifAbsent: []