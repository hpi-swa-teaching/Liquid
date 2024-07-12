accessing - visualization
getChoiceIdentifiersFor: aQuestion

	| count |
	count := 0.
	^ aQuestion choiceDescriptions collect: [:aChoice |
		count := count + 1.
		count]