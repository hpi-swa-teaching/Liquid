accessing
choiceAt: anIndex put: aBoolean
"Toggle the choice at anIndex in the user's selection. If aBoolean is true, the choice is added; if false, it is removed. Validate selection: when the rejection is due to a self-vote exclusion, the user gets informed. Notifies dependent UI components of the change."

	| choice newSelectedChoices |
	choice := self choiceDescriptions at: anIndex ifAbsent: [^ self].
	newSelectedChoices := self selectedChoices copy.

	aBoolean
		ifTrue: [(newSelectedChoices includes: choice)
			ifFalse: [newSelectedChoices add: choice]]
		ifFalse: [newSelectedChoices remove: choice ifAbsent: []].

	(self isValidSelection: newSelectedChoices ForChoiceAt: anIndex)
		ifTrue: [
			self selectedChoices: newSelectedChoices.
			self updateAnswer]
		ifFalse: [
			(self exclusionMarker excludes: anIndex)
				ifTrue: [UIManager default inform: LQParticipantMenu new messageOwnVote]].

	self
		changed: #getRemainingVotedChoices;
		changed: #fillSideboard;
		changed: #choiceSelected.