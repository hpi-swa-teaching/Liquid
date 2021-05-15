modes
enterParticipantMode
|SurveyId menu|

SurveyId := FillInTheBlank request: 'What''s your Survey ID?'.
SurveyId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
(SurveyId = 'mockup') ifFalse: [
	(menu importSurveyWithId: SurveyId) 
	ifNotNil: [
		ToolBuilder open: menu.
		self dependents do: [:curr | curr delete].
		]
	ifNil: [
		self showDialogWithTitle: 'Invalid ID' andMessage: 'Please enter a valid Survey ID'.
		self enterParticipantMode.
		]
	].