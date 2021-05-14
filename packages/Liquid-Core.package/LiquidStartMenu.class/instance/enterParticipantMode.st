as yet unclassified
enterParticipantMode
|SurveyId menu|

SurveyId := FillInTheBlank request: 'What''s your SurveyID?'.
SurveyId ifEmpty: [^ self].
"ToDo: ^ self if SurveyId does not exist"
menu := LiquidParticipantMenu new.
ToolBuilder open: menu.
(SurveyId = 'mockup') ifFalse: [
	menu importSurveyWithId: SurveyId.].
self dependents do: [:curr | curr delete].