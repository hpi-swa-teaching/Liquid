modifying
addGroupExclusion

	| userSetID groups choice selected |
	userSetID := self pollDraft userSetID.
	userSetID isEmptyOrNil ifTrue: [^ UIManager default inform: 'No user set selected'].
	groups := (LQUserSetRepo default at: userSetID) availableGroups.
	choice := self pickChoiceFromCurrentQuestion.
	choice ifNil: [^ self].
	selected := self pickGroupsFrom: groups.
	selected isEmpty ifTrue: [^ self].
	choice applyExcludedGroups: selected.
	self changed: #buildQuestionBuilder