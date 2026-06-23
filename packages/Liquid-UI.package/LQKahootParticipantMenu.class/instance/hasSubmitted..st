accessing
hasSubmitted: aBoolean

	hasSubmitted := aBoolean.
	self changed: #submitEnabled.
	self changed: #choice1Label; changed: #isChoice1Enabled.
	self changed: #choice2Label; changed: #isChoice2Enabled.
	self changed: #choice3Label; changed: #isChoice3Enabled.
	self changed: #choice4Label; changed: #isChoice4Enabled.
	self changed: #buildChoiceButtonsWith:.
