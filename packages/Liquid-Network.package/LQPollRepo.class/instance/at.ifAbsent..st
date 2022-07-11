communication
at: key ifAbsent: aBlock

	| resp |
	resp := self serverAt: key.
	resp isSuccess
		ifTrue: [^ LQRemoteObjectDummy on: self url withId: key andPassword: self currentPassword].
	(resp code = 401) ifTrue: [self currentPassword: self requestPassword. 
												^ self at: key ifAbsent: aBlock].
	^ aBlock value