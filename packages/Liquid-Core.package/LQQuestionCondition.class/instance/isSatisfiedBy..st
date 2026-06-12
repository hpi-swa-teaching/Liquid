temporary
isSatisfiedBy: anAnsweSLCategoryTestObject
	"will be used later in the subsequent logic"
    | triggerAnswer anAnswerSet |
    triggerAnswer := anAnswerSet answers at: triggerQuestionId ifAbsent: [ ^ false ].
    ^ triggerAnswer containsVoteForChoice: triggerChoiceDescription