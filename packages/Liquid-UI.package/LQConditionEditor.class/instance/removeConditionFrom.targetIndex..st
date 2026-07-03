editing
removeConditionFrom: aPollDraft targetIndex: anIndex

	| currentQ conditions |
	(anIndex isNil or: [anIndex = 0]) ifTrue: [
		UIManager default inform: 'Please select a question first.'.
		^ false].
	currentQ := aPollDraft questionList at: anIndex.
	conditions := aPollDraft conditionsForTarget: currentQ id.
	conditions isEmpty ifTrue: [
		UIManager default inform: 'The selected question has no condition to remove.'.
		^ false].
	^ self removeConditionByIndexFrom: aPollDraft for: currentQ conditions: conditions