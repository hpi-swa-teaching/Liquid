modifying
openMatchingPreferences
	"Öffnet den Matching-Preferences-Dialog für den aktuell gewählten Poll.
	 Sicherheits-Guard: macht nichts, wenn keine Priority-Fragen existieren."

	self matchingPreferencesButtonEnabled ifFalse: [
		^ UIManager default inform: 'This poll has no preference questions.'].
	"TODO: hier den eigentlichen Dialog öffnen, sobald LQMatchingPreferencesDialog existiert."
	UIManager default inform: 'Algorithm is not yet implemented'