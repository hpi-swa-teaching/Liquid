private
confirmConditionIn: aPollDraft target: anIndex trigger: aTriggerQuestion choice: aTriggerChoice

	| currentQ condition |
	currentQ := aPollDraft questionList at: anIndex.
	condition := LQQuestionCondition
		triggerQuestion: aTriggerQuestion id
		triggerChoice: aTriggerChoice description
		target: currentQ id.
	aPollDraft addCondition: condition.
	UIManager default inform:
		'Condition added:' , String lf ,
		'"' , currentQ title , '"' , String lf ,
		'will only appear when' , String lf ,
		'"' , aTriggerQuestion title , '" = "' , aTriggerChoice description , '"'