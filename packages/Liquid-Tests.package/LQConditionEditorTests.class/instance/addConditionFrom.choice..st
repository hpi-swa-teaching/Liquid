helper methods
addConditionFrom: aTriggerQuestion choice: aDescription
	"Adds a condition on the second question of the fixture draft."

	self pollDraft addCondition: (LQQuestionCondition
		triggerQuestion: aTriggerQuestion id
		triggerChoice: aDescription
		target: self pollDraft questionList second id)