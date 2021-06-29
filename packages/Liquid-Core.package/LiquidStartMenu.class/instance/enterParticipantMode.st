modes
enterParticipantMode
|pollId menu|

pollId := UIManager default request: 'What''s your Poll ID?' initialAnswer: Clipboard clipboardText asString.
pollId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
	(menu importPollWithId: pollId) 
	ifNotNil: [
		ToolBuilder open: menu.
		self dependents do: [:curr | curr delete].
		]
	ifNil: [
		UIManager default inform: 'This Poll does not exist.'.
		"TODO: Ugly recursion. Better solve this using whileNil"
		self enterParticipantMode.
		]
