modifying
openMatchingPreferences

	self pollSelected ifFalse: [^ self].
	LQRemotePollRepoServer pollRepo
		at: self currentPollID
		ifAbsent: [^ UIManager default inform: 'This poll does not exist.'].
	"Placeholder, until the real matching algorithm exists:
	 ToolBuilder open: (LQMatchingPreferencesMenu newWithPollID: self currentPollID)"
	UIManager default inform: 'Matching Preferences for poll ', self currentPollID asString