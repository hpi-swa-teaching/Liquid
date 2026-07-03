editing
addExclusionFor: aPollDraft questionBuilder: aQuestionBuilder

	| userSetID groups choice selected |
	userSetID := aPollDraft userSetID.
	userSetID isEmptyOrNil ifTrue: [
		UIManager default inform: 'No user set selected'.
		^ false].
	groups := (LQUserSetRepo default at: userSetID) availableGroups.
	choice := self pickChoiceFrom: aQuestionBuilder.
	choice ifNil: [^ false].
	selected := self pickGroupsFrom: groups.
	selected isEmpty ifTrue: [^ false].
	choice applyExcludedGroups: selected.
	^ true