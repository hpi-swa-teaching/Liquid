printing
writeImageOn: aStream

	| imageWidth gap startInPage |
	startInPage := 750.
	gap := 10.
	imageWidth := 450.
	1 to: self numberOfImages do: [:index | | chart imageHeight |
		chart := charts at: index.
		imageHeight := (imageWidth * chart height / chart width) rounded.
		startInPage := startInPage - imageHeight.
		aStream
			nextPutAll: 'q'; nextPutAll: String lf;
			nextPutAll: imageWidth asString, ' 0 0 ', imageHeight asString, ' 72 ', startInPage asString, ' cm'; nextPutAll: String lf;
			nextPutAll: '/Im', index asString, ' Do'; nextPutAll: String lf;
			nextPutAll: 'Q'; nextPutAll: String lf.
		startInPage := startInPage - gap]