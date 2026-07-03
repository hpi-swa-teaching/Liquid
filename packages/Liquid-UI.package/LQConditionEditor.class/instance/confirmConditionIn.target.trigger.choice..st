editing
confirmConditionIn: aPollDraft target: anIndex trigger: aTriggerQuestion choice: aTriggerChoice

	| currentQ condition alreadyExists |
	currentQ := aPollDraft questionList at: anIndex.
	alreadyExists := (aPollDraft conditionsForTarget: currentQ id)
		anySatisfy: [:c |
			c triggerQuestionId = aTriggerQuestion id and: [
				c triggerChoiceDescription = aTriggerChoice description]].
	alreadyExists ifTrue: [
		UIManager default inform: 'This condition already exists.'.
		^ false].
	condition := LQQuestionCondition
		triggerQuestion: aTriggerQuestion id
		triggerChoice: aTriggerChoice description
		target: currentQ id.
	aPollDraft addCondition: condition.
	UIManager default inform:
		'Condition added:' , String lf ,
		'"' , currentQ title , '"' , String lf ,
		'will only appear when' , String lf ,
		'"' , aTriggerQuestion title , '" = "' , aTriggerChoice description , '"'.
	^ true