testing
testWasEditedDefaultsToFalseWhenUninitialized

	"Regression: STON-Deserialisierung umgeht initialize -> wasEdited bleibt nil.
	Accessor muss Boolean liefern, sonst NonBooleanReceiver in formatAnswer:forQuestion:seperation:."

	self assert: LQFreeTextQuestion basicNew wasEdited equals: false
