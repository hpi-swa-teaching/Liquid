visualization-type
chartTypeToggleEnabled

	^ (self questionList at: self index ifAbsent: [^ false]) isFreeTextQuestion not