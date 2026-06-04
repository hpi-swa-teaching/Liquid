data
collectAnswerFrequenciesFrom: anAnswerSet forQuestion: aQuestion into: frequencies displayLabels: displayLabels

	| matchingAnswers |
	matchingAnswers := (anAnswerSet answers values select: [:ans | ans questionId = aQuestion id]) sorted: [:a :b | a answer <= b answer].
	matchingAnswers do: [:freeTextAnswer | | trimmedAnswer normalizedKey |
		trimmedAnswer := freeTextAnswer answer asString withBlanksTrimmed.
		trimmedAnswer isEmpty ifFalse: [
			normalizedKey := trimmedAnswer asLowercase.
			(frequencies includesKey: normalizedKey) ifFalse: [displayLabels at: normalizedKey put: trimmedAnswer].
			frequencies at: normalizedKey put: (frequencies at: normalizedKey ifAbsent: [0]) + 1]]