printing
writeImageOn: aStream

	| startInPage |
	startInPage := self imageStart.
	1 to: self numberOfImages do: [:index | | chart imageHeight |
		chart := charts at: index.
		imageHeight := (self imageWidth * chart height / chart width) rounded.
		startInPage := startInPage - imageHeight.
		self writeLine: 'q' on: aStream.
		self writeLine: (self imageWidth asString, ' 0 0 ', imageHeight asString, ' ', self leftMargin asString, ' ', startInPage asString, ' cm') on: aStream.
		self writeLine: ('/Im', index asString, ' Do') on: aStream.
		self writeLine: 'Q' on: aStream]