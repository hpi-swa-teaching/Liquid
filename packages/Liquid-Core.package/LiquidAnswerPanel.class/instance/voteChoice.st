accessing
voteChoice
	"This is for single-choice only"
	self answer votedChoice: self selectedChoice.
	self changed: #votedChoiceList.