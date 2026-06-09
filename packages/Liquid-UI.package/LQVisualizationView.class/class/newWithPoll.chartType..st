instance creation
newWithPoll: aPoll chartType: anSWChartClass

	^ (self newWithPoll: aPoll)
		chartType: anSWChartClass;
		yourself