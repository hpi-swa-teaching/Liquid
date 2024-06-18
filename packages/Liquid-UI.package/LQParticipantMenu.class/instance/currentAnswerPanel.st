toolbuilder
currentAnswerPanel

	freeTextPanel owner ifNotNil: [^ freeTextPanel].
	selectionPanel owner ifNotNil: [^ selectionPanel].
	self error.