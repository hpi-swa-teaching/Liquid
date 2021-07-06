modes
enterParticipantMode
|pollId menu|

pollId := UIManager default request: 'What''s your Poll ID?' initialAnswer: Clipboard clipboardText asString.
pollId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
	(menu importPollWithId: pollId) 
	ifNotNil: [
		ToolBuilder open: menu.
		self destroy.
		]
	ifNil: [
		UIManager default inform: 'Please enter a valid Poll ID'.
		self enterParticipantMode.
		]
