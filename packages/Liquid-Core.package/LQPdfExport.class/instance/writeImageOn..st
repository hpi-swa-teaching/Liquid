printing
writeImageOn: aStream

	| startInPage |
	startInPage := self imageStart.
	1 to: self numberOfImages do: [:index | | chart imageHeight |
		chart := charts at: index.
		imageHeight := (self imageWidth * chart height / chart width) rounded.
		startInPage := startInPage - imageHeight.
		aStream
			nextPutAll: 'q'; nextPutAll: String lf;
			nextPutAll: self imageWidth asString, ' 0 0 ', imageHeight asString,' ', self leftMargin asString, ' ', startInPage asString, ' cm'; nextPutAll: String lf;
			nextPutAll: '/Im', index asString, ' Do'; nextPutAll: String lf;
			nextPutAll: 'Q'; nextPutAll: String lf.]