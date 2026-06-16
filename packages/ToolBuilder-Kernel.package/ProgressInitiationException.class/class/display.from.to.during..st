signalling
display: aString from: minVal to: maxVal during: workBlock 
	^ self
		display: aString
		at: nil
		from: minVal
		to: maxVal
		during: workBlock