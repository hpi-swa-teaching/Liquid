editing
addConditionTo: aPollDraft targetIndex: anIndex

	| triggerQuestion triggerChoice |
	(self validateTargetIn: aPollDraft index: anIndex) ifFalse: [^ false].
	triggerQuestion := self pickTriggerQuestionIn: aPollDraft targetIndex: anIndex.
	triggerQuestion ifNil: [^ false].
	triggerChoice := self pickTriggerChoice: triggerQuestion.
	triggerChoice ifNil: [^ false].
	self confirmConditionIn: aPollDraft target: anIndex trigger: triggerQuestion choice: triggerChoice.
	^ true