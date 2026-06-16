handling
defaultResumeValue
	^ UIManager default
		displayProgress: progressTitle
		at: aPoint
		from: minVal
		to: maxVal
		during: workBlock