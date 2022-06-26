communication
at: key ifAbsent: aBlock

	| resp |
	resp := self serverAt: key.
	resp isSuccess
		ifTrue: [^ LQRemoteObjectDummy on: url withId: key andPassword: self currentPassword].
	(resp code = 401) ifTrue: [self currentPassword: (UIManager default request: 'Enter your Password!'). 
												^ self at: key ifAbsent: aBlock].
	^ aBlock value