accessing
at: key ifAbsent: aBlock

	| resp |
	resp := (WebClient httpGet: url, '/?id=', key, '&userID=', self currentPassword).
	resp isSuccess
		ifTrue: [^ LQRemoteObjectDummy on: url withId: key].
		"ifFalse: [aBlock value]"
	Transcript show: resp code; cr.
	(resp code = 400) ifTrue: [self currentPassword: (UIManager default request: 'Enter your Password!'). 
												^ self at: key ifAbsent: aBlock].
	"(resp code = 404) ifTrue: [aBlock value]"
	aBlock value