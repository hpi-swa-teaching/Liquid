manage
findPasswordFor: aPollId ifAbsent: do
	^ passwordStore at: aPollId ifAbsent: [ do value ]