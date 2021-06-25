modes
enterParticipantMode
|pollId menu|

pollId := FillInTheBlank request: 'What''s your Poll ID?' initialAnswer: 'mockup'.
pollId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
	(menu importPollWithId: pollId) 
	ifNotNil: [
		ToolBuilder open: menu.
		self destroy.
		]
	ifNil: [
		UserDialogBoxMorph inform: 'Please enter a valid Poll ID' title: 'Invalid ID'.
		self enterParticipantMode.
		]
