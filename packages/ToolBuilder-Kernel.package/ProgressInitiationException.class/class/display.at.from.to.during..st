signalling
display: aString at: aPoint from: minVal to: maxVal during: workBlock 
	^ self new
		display: aString
		at: (aPoint ifNil: [ self preferredProgressBarPoint ])
		from: minVal
		to: maxVal
		during: workBlock