running
tearDown
	super tearDown.
	server ifNotNil: [server destroy].