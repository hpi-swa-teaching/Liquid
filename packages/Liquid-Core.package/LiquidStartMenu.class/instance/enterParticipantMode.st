modes
enterParticipantMode
|SurveyId menu|

SurveyId := FillInTheBlank request: 'What''s your Survey ID?' initialAnswer: 'mockup'.
SurveyId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
(SurveyId = 'mockup') ifTrue: [
	ToolBuilder open: menu.
	self dependents do: [:curr | curr delete].
] ifFalse: [
	(menu importSurveyWithId: SurveyId) 
	ifNotNil: [
		ToolBuilder open: menu.
		self dependents do: [:curr | curr delete].
		]
	ifNil: [
		UserDialogBoxMorph inform: 'Please enter a valid Survey ID' title: 'Invalid ID'.
		self enterParticipantMode.
		]
	]