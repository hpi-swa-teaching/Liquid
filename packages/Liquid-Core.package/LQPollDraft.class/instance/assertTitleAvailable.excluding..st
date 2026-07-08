accessing
assertTitleAvailable: aTitle excluding: aDraft
	| normalized |
	normalized := aTitle withBlanksTrimmed.
	normalized isEmpty ifTrue: [^ false].
	LQRemotePollRepoServer pollDraftRepo items do: [:each |
		(each title withBlanksTrimmed = normalized) ifTrue: [
			(aDraft isNil or: [each pollDraftId ~= aDraft pollDraftId]) ifTrue: [^ false]]].
	LQRemotePollRepoServer pollRepo items do: [:poll |
		(poll respondsTo: #pollDraft) ifTrue: [
		((poll pollDraft title ifNil: ['']) withBlanksTrimmed = normalized) ifTrue: [
			(aDraft isNil or: [(poll pollDraft pollDraftId) ~= aDraft pollDraftId]) ifTrue: [^ false]]]].
	^ true