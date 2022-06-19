as yet unclassified
requiresAuthentication: aPollID

	| resp |
	resp := (WebClient httpGet: url, '/?id=', aPollID).
	resp isSuccess
		ifTrue: [^ LQRemoteObjectDummy on: url withId: aPollID].
	^ (resp code = 401)