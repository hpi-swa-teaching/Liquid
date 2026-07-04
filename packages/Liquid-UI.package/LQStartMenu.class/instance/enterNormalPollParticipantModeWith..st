modifying
enterNormalPollParticipantModeWith: pollId


	| menu |
	menu := LQParticipantMenu new.
	(menu importPollWithId: pollId)
		ifNil: [
			UIManager default inform: 'Please enter a valid Poll ID'
			"self enterParticipantMode"]
		ifNotNil: [
			ToolBuilder open: menu.
			self destroy]