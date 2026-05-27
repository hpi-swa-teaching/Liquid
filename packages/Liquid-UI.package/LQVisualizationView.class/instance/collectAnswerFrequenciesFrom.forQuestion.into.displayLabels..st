data
collectAnswerFrequenciesFrom: anAnswerSet forQuestion: aQuestion into: frequencies displayLabels: displayLabels

	anAnswerSet answers valuesDo: [:freeTextAnswer |
		(freeTextAnswer questionId = aQuestion id) ifTrue: [
			| trimmedAnswer normalizedKey |
			trimmedAnswer := freeTextAnswer answer asString withBlanksTrimmed.
			trimmedAnswer isEmpty ifFalse: [
				normalizedKey := trimmedAnswer asLowercase.
				frequencies
					at: normalizedKey
					ifPresent: [:count | frequencies at: normalizedKey put: count + 1]
					ifAbsent: [
						frequencies at: normalizedKey put: 1.
						displayLabels at: normalizedKey put: trimmedAnswer]]]]
