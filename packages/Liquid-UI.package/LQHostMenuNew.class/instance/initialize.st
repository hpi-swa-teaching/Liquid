initialize-release
initialize
	super initialize.
	self visualizations: OrderedCollection new.
	self pollList: OrderedCollection new.
	self currentPoll: 1.
	"self
		pollList: (self convertDictionaryToOrderedCollection: LQRemotePollRepoServer pollRepo)"