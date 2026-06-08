modifying
openMatchingPreferences
	"Öffnet den Matching-Preferences-Dialog für den aktuell gewählten Poll.
	 Sicherheits-Guard: macht nichts, wenn keine Priority-Fragen existieren."

    self matchingPreferencesButtonEnabled ifFalse: [
        ^ UIManager default inform: 'This poll has no preference questions.'].
    LQMatchingPreferencesDialog openWithPoll:
        (LQRemotePollRepoServer pollRepo at: self currentPollID)