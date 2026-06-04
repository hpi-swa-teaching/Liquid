toolbuilder
addPriorityQuestionButtonFrame
	
	|height|
	height := 0.925.
	self isInLiveEditMode ifTrue: [height:=1].
	^ self frame: height fromTop: 0.85 fromLeft: 0.625 width: 0.1875