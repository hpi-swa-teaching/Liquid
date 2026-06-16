ui requests - text
multiLineRequest: queryString initialAnswer: defaultAnswer
	"Create and invoke a multi-line instance of me whose question is queryString with the given initial answer. Answer the string the user accepts, or nil if the user cancels. An empty string returned means that the ussr cleared the editing area and then hit 'accept'.
	Because multiple lines are invited, we ask that the user use the ENTER key, or (in morphic anyway) hit the 'accept' button, to submit; that way, the return key can be typed to move to the next line."
	^self
		multiLineRequest: queryString
		centerAt: Sensor cursorPoint
		initialAnswer: defaultAnswer
		answerHeight: 200