accessing
stopServer

	Server ifNotNil: [Server destroy].
	Server := nil.
	"Really ensure the server is dead - otherwise the server may linger on even without pointers to it; long running servers may not be garbage collected the first time round."
	Smalltalk garbageCollect