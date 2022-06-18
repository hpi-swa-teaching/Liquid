accessing
at: key ifAbsent: aBlock

	| resp |
	resp := (WebClient httpGet: url, '/?id=', key).
	resp isSuccess
		ifTrue: [^ LQRemoteObjectDummy on: url withId: key].
		"ifFalse: [aBlock value]"
	(resp code = 401) ifTrue: [self error: 'Requires Authentication!!'].
	"(resp code = 404) ifTrue: [aBlock value]"
	[aBlock value]