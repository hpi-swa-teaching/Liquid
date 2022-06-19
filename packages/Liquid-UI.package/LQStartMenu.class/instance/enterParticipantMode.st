modifying
enterParticipantMode

	| pollId menu|
	pollId := UIManager default request: 'What''s your Poll ID?'.
	pollId ifEmpty: [^ self].
	
	(LQParticipantMenu answeredPollIds includes: pollId) ifTrue: [
		UIManager default inform: 'You have already answered this Poll.'.
		^ self].
	
	"(LQPollRepo default requiresAuthentication: pollId)
		ifTrue: [password := UIManager default request: 'What is your password for this poll?']."
	
	menu := LQParticipantMenu new.
	(menu importPollWithId: pollId)
		ifNotNil: [
			ToolBuilder open: menu.
			self destroy]
		ifNil: [
			UIManager default inform: 'Please enter a valid Poll ID'.
			self enterParticipantMode]