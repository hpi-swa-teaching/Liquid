as yet unclassified
doesNotUnderstand: aMessage
	| resp args callbacks fullUrl cws msg |
	callbacks := Set new.
	args := aMessage arguments collect: [:arg | arg isBlock ifTrue: [callbacks add: arg. #sse] ifFalse: arg ].
	
	fullUrl := '?id=',id,'&message=',(aMessage selector asString),'&args=',(STON toString: args).
	
	callbacks ifEmpty: [
		resp := WebClient httpPost: url,'/',fullUrl content: '' type: 'text/plain'.
		resp isSuccess ifFalse: [self error: resp content].
		^ STON fromString: resp content
	].

	cws := WebClient webSocketTo: url,'/ws',fullUrl.
	cws onMessage: [ :msgSton |
		msg := STON fromString: msgSton.
		callbacks do: [ :callback | callback value: msg ].
	].
	cws fork.