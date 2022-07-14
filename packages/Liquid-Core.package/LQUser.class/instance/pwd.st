accessing
pwd
	^ pwd ifNil: [^pwd := "UUID new asString" '1'].