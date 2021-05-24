as yet unclassified
at: key ifAbsent: do
	(HTTPClient httpGet: url , '/?id=' , key) isSuccess
		ifTrue: [^ RemoteObjectDummy on: url withId: key]
		ifFalse: do