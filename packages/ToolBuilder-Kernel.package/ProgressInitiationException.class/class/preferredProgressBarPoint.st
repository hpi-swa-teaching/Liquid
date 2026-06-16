accessing
preferredProgressBarPoint
	^ self preferredProgressBarPosition = #cursorPoint
		ifTrue: [ Sensor cursorPoint ]
		ifFalse: [ UIManager default screenBounds perform: self preferredProgressBarPosition ]