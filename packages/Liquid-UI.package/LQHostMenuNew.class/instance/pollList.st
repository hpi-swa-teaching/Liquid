accessing
pollList
"	LQRemotePollRepoServer pollRepo items size == 0
	ifTrue: [^OrderedCollection new]."
	^ LQRemotePollRepoServer pollRepo items values asOrderedCollection