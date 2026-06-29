editing
removeConditionFrom: aPollDraft targetIndex: anIndex

	| currentQ |
	(anIndex isNil or: [anIndex = 0]) ifTrue: [
		UIManager default inform: 'Please select a question first.'.
		^ false].
	currentQ := aPollDraft questionList at: anIndex.
	(aPollDraft hasConditionForTarget: currentQ id) ifFalse: [
		UIManager default inform: 'The selected question has no condition to remove.'.
		^ false].
	aPollDraft removeConditionsForTarget: currentQ id.
	UIManager default inform: 'All conditions removed from "' , currentQ title , '"'.
	^ true