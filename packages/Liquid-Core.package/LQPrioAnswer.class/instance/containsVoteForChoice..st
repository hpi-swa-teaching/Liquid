evaluation
containsVoteForChoice: aChoice
	"we believe this is unnecessary. remove if no other opinion"
	^ self choicesRanking includes: aChoice description