modifying
guardMatchingPreferencesAvailable
    "Popup-Guard: Poll muss eine Preference-Frage enthalten."

    self matchingPreferencesButtonEnabled ifTrue: [^ true].
    UIManager default inform:
        'Preference Matching is not available:
this poll has no preference questions.'.
    ^ false