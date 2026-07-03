text-processing
attributedLineAt: lineNumber in: aText
	| lineIndex start |
	lineIndex := 0.
	start := 1.
	1 to: aText size do: [:pos |
		(aText string at: pos) = Character cr ifTrue: [
			lineIndex := lineIndex + 1.
			lineNumber = lineIndex ifTrue: [^ aText copyFrom: start to: pos - 1].
			start := pos + 1]].
	lineIndex := lineIndex + 1.
	lineNumber = lineIndex ifTrue: [^ aText copyFrom: start to: aText size].
	^ '' asText