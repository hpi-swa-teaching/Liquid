accessing
at: key ifAbsent: aBlock
	(WebClient httpGet: url , '/?id=' , key) isSuccess
		ifTrue: [^ LQRemoteObjectDummy on: url withId: key]
		ifFalse: [aBlock value]