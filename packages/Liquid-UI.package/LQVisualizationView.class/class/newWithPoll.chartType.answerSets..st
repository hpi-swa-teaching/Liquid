instance creation
newWithPoll: aPoll chartType: anSWChartClass answerSets: someAnswerSets

	^ (self newWithPoll: aPoll chartType: anSWChartClass)
		answerSets: someAnswerSets;
		yourself