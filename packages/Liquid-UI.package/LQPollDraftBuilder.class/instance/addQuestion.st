modifying
addQuestion

	self pollDraft addQuestion: LQChoicesQuestion new.
	self changed: #title.
	self changed: #choiceList