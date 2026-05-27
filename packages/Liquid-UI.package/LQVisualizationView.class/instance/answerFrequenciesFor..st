data
answerFrequenciesFor: aQuestion

	| frequencies displayLabels trimmedAnswer normalizedKey freeTextAnswer |
	frequencies := Dictionary new.
	displayLabels := Dictionary new.
	self poll answerSets do: [:answerSet |
		freeTextAnswer := answerSet answers at: aQuestion id ifAbsent: [nil].
		freeTextAnswer ifNotNil: [
			trimmedAnswer := freeTextAnswer answer asString withBlanksTrimmed.
			trimmedAnswer isEmpty ifFalse: [
				normalizedKey := trimmedAnswer asLowercase.
				frequencies
					at: normalizedKey
					ifPresent: [:count | frequencies at: normalizedKey put: count + 1]
					ifAbsent: [
						frequencies at: normalizedKey put: 1.
						displayLabels at: normalizedKey put: trimmedAnswer]]]].
	^ displayLabels keys inject: Dictionary new into: [:result :key |
		result at: (displayLabels at: key) put: (frequencies at: key).
		result]
