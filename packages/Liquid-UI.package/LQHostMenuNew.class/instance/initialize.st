initialize-release
initialize
	super initialize.
	self visualizations: OrderedCollection new.
	self currentPoll: self pollList size.
	LQRemotePollRepoServer pollRepo addDependent: self