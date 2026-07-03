testing
testLiveEditModeConstraints

	| activeUIManagerClass originalInformMethod initialQuestionCount |
	activeUIManagerClass := UIManager default class.
	originalInformMethod := activeUIManagerClass methodDict at: #inform: ifAbsent: [nil].
	originalInformMethod ifNotNil: [
		activeUIManagerClass
			compile: 'inform: aString ^ self'
			classified: 'ui requests'
			notifying: nil].
	[
		self deny: self pollDraftBuilder isInLiveEditMode.
		self pollDraftBuilder addFreeTextQuestion.
		self pollDraftBuilder addMultiChoiceQuestion.
		initialQuestionCount := self pollDraftBuilder pollDraft questionList size.
		self assert: initialQuestionCount equals: 2.
		self pollDraftBuilder isInLiveEditMode: true.
		self assert: self pollDraftBuilder isInLiveEditMode.
		self assert: (self pollDraftBuilder questionBuilders allSatisfy: [:qb | qb isInLiveEditMode]).
		
		"Making sure adding/removing Questions isn't possible in LiveEditMode"
		self pollDraftBuilder addFreeTextQuestion.
		self assert: self pollDraftBuilder pollDraft questionList size equals: initialQuestionCount.
		self pollDraftBuilder addMultiChoiceQuestion.
		self assert: self pollDraftBuilder pollDraft questionList size equals: initialQuestionCount.
		self pollDraftBuilder addPriorityQuestion.
		self assert: self pollDraftBuilder pollDraft questionList size equals: initialQuestionCount.
		
		self pollDraftBuilder removeQuestion.
		self assert: self pollDraftBuilder pollDraft questionList size equals: initialQuestionCount.
		
		self pollDraftBuilder pollDraft title: 'OriginalTitle'.
		self pollDraftBuilder editPollTitle.
		self assert: self pollDraftBuilder pollDraft title equals: 'OriginalTitle'.
		
		self pollDraftBuilder isInLiveEditMode: false.
		self deny: (self pollDraftBuilder questionBuilders anySatisfy: [:qb | qb isInLiveEditMode]).
		] ensure: [
			originalInformMethod ifNotNil: [
				activeUIManagerClass addSelector: #inform: withMethod: originalInformMethod].
		]