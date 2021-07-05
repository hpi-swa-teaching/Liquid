tests
tearDown
	super tearDown.
	self server ifNotNil: [self server destroy].