modes
enterParticipantMode
|pollId menu|

pollId := FillInTheBlank request: 'What''s your Poll ID?'.
pollId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
	(menu importPollWithId: pollId) 
	ifNotNil: [
		ToolBuilder open: menu.
		self dependents do: [:curr | curr delete].
		]
	ifNil: [
		UserDialogBoxMorph inform: 'Please enter a valid Poll ID' title: 'Invalid ID'.
		self enterParticipantMode.
		]
