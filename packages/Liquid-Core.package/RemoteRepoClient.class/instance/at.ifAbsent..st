accessing
at: key ifAbsent: aBlock
	(WebClient httpGet: url , '/?id=' , key) isSuccess
		ifTrue: [^ RemoteObjectDummy on: url withId: key]
		ifFalse: [aBlock value]