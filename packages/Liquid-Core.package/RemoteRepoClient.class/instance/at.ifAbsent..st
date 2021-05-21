as yet unclassified
at: key ifAbsent: do
	(WebClient httpGet: url , '/?id=' , key) isSuccess
		ifTrue: [^ RemoteObjectDummy on: url withId: key]
		ifFalse: do