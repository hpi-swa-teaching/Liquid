signalling
display: aString during: workBlock 
	"Show progress bar; the position should be standardize from 0 to 1"
	"ProgressInitiationException display: 'progress' during: [:bar | 
		0 to: 1 by: 0.1 do: [:x | bar value: x.
			(Delay forMilliseconds: 100) wait]]"
	^ self new
		display: aString
		at: Sensor cursorPoint
		from: 0
		to: 1
		during: workBlock