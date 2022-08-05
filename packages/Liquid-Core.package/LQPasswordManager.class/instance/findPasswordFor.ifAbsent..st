manage
findPasswordFor: aPollId ifAbsent: do

	^ self passwordStore at: aPollId ifAbsent: [do value]