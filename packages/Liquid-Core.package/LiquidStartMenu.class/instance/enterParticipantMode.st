modes
enterParticipantMode
|SurveyId menu|

SurveyId := FillInTheBlank request: 'What''s your Survey ID?' initialAnswer: 'mockup'.
SurveyId ifEmpty: [^ self].

menu := LiquidParticipantMenu new.
(SurveyId = 'mockup') "Only for demo and testing purposes, opens a pre-built poll in the ParticipantMenu"
	ifTrue: [
		ToolBuilder open: menu.
		self dependents do: [:curr | curr delete].
		"self dependents do: [:curr | curr delete] without: (self dependents at: 1)." "Keep the SystemWindow, but delete everything else"
	] ifFalse: [
		[(menu importPollDraftWithId: SurveyId)]
			whileNil: [
				UserDialogBoxMorph inform: 'Please enter a valid Survey ID' title: 'Invalid ID'.
				SurveyId := FillInTheBlank request: 'What''s your Survey ID?' initialAnswer: 'mockup'.
				SurveyId ifEmpty: [^ self].
			].
			ToolBuilder open: menu.
			self dependents do: [:curr | curr delete].
]