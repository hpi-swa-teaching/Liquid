accessing
at: key ifAbsent: aBlock

	| resp |
	resp := (WebClient httpGet: url, '/?id=', key, '&pwd=', self currentPassword).
	Transcript show: resp.
	resp isSuccess
		ifTrue: [^ LQRemoteObjectDummy on: url withId: key andPassword: self currentPassword].
		"ifFalse: [aBlock value]"
	(resp code = 400) ifTrue: [self currentPassword: (UIManager default request: 'Enter your Password!'). 
												^ self at: key ifAbsent: aBlock].
	"(resp code = 404) ifTrue: [aBlock value]"
	aBlock value