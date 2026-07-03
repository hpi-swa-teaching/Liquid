editing
removeConditionByIndexFrom: aPollDraft for: aQuestion conditions: aConditionList

	| text input index |
	text := 'Conditions for "' , aQuestion title , '":' , String lf , String lf.
	aConditionList doWithIndex: [:c :i |
		| triggerQuestion |
		triggerQuestion := aPollDraft questionList
			detect: [:q | q id = c triggerQuestionId]
			ifNone: [nil].
		text := text , i printString , '. "' ,
			(triggerQuestion ifNil: ['?'] ifNotNil: [triggerQuestion title]) ,
			'" = "' , c triggerChoiceDescription , '"' , String lf].
	input := UIManager default
		request: text , String lf , 'Enter number to delete (or leave empty to cancel):'
		initialAnswer: ''.
	(input isNil or: [input isEmpty]) ifTrue: [^ false].
	index := input asInteger.
	(index isNil or: [index < 1 or: [index > aConditionList size]]) ifTrue: [
		UIManager default inform: 'Invalid number.'.
		^ false].
	aPollDraft removeCondition: (aConditionList at: index).
	UIManager default inform: 'Condition removed.'.
	^ true