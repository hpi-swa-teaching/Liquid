data
dataFor: aQuestion

	| sortedData xValues yValues labels result labeledClass dataClass |
	sortedData := self sortDataFor: aQuestion.
	xValues := self poll getChoiceIdentifiersFor: aQuestion.
	yValues := sortedData collect: [:element | element first].
	labels := sortedData collect: [:element | element second].
	labeledClass := Smalltalk at: #SWDataLabeled ifAbsent: [nil].
	(labeledClass notNil
		and: [labeledClass respondsTo: #fromXValues:versusYValues:withLabels:])
		ifTrue: [
			result := labeledClass
				fromXValues: xValues
				versusYValues: yValues
				withLabels: labels]
		ifFalse: [
			dataClass := Smalltalk at: #SWData ifAbsent: [nil].
			dataClass ifNil: [
				self error: 'StatisticsWorkbench not loaded (SWData missing).'].
			result := dataClass fromXValues: xValues versusYValues: yValues.
			(result respondsTo: #setLabels:)
				ifTrue: [result setLabels: labels]].
	result setAllDimensionNames: #('Choice' 'Times Voted').
	^ result