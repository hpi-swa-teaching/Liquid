modes
enterParticipantMode
|pollId menu|

pollId := FillInTheBlank request: 'What''s your Poll ID?' initialAnswer: 'mockup'.
pollId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
	(menu importPollWithId: pollId) 
	ifNotNil: [
		ToolBuilder open: menu.
		self dependents do: [:curr | curr delete].
		]
	ifNil: [
		UIManager default inform: 'Please enter a valid Poll ID' title: 'Invalid ID'.
		"TODO: Ugly recursion. Better solve this using whileNil"
		self enterParticipantMode.
		]
