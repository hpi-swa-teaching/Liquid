modifying
setIndex: index 
	self currentPoll: index.
	"index = 0
		ifFalse: [self changed: #pollID]."
	self changed: #pollId.
	self changed: #getIndex