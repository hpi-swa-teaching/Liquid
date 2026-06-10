printing
writeImageOn: aStream

	| imageWidth imageHeight |
	imageWidth := 450.
	imageHeight := (imageWidth * chart height / chart width) rounded.
	aStream
		nextPutAll: 'q'; nextPutAll: String lf;
		nextPutAll: imageWidth asString, ' 0 0 ', imageHeight asString, ' 72 80 cm'; nextPutAll: String lf;
		nextPutAll: '/Im1 Do'; nextPutAll: String lf;
		nextPutAll: 'Q'; nextPutAll: String lf