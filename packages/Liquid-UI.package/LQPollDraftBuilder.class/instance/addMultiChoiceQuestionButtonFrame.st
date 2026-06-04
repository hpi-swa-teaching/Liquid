toolbuilder
addMultiChoiceQuestionButtonFrame
	
	|height|
	height := 0.925.
	self isInLiveEditMode ifTrue: [height:=1].
	^ self frame: height fromTop: 0.85 fromLeft: 0.25 width: 0.1875