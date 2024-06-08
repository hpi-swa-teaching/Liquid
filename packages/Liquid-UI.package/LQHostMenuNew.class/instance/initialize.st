initialize-release
initialize
	super initialize.
	self visualizations: OrderedCollection new.
	self pollList: self refreshPollList.
	self currentPoll: 1.
	"self
		pollList: (self convertDictionaryToOrderedCollection: LQRemotePollRepoServer pollRepo)"