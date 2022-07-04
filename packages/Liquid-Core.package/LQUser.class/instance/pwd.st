accessing
pwd
	^ pwd ifNil: [^pwd := UUID new asString].