temporary
isSatisfiedBy: anAnswerSet
	"will be used later in the subsequent logic"
    ^ (anAnswerSet answers at: triggerQuestionId ifAbsent: [ ^ false ])
        containsVoteForChoice: triggerChoiceDescription