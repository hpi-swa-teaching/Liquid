modifying
showAvailableGroups

	| groups text |
	self pollDraft userSetID isEmptyOrNil
		ifTrue: [^ UIManager default inform: 'No user set selected'].
	groups := (LQUserSetRepo default at: self pollDraft userSetID) availableGroups.
	text := String streamContents: [:s |
		groups do: [:g | s nextPutAll: g] separatedBy: [s nextPutAll: ', ']].
	UIManager default inform: 'Available groups: ', text