as yet unclassified
doesNotUnderstand: aMessage
	| resp args callbacks query cws msg |
	callbacks := Set new.
	args := aMessage arguments collect: [:arg | arg isBlock ifTrue: [callbacks add: arg. #sse] ifFalse: arg ].
	
	query := '?id=',id,'&message=',(aMessage selector asString),'&args=',(STON toString: args).
	
	callbacks ifEmpty: [
		resp := WebClient httpPost: url,'/',query content: '' type: 'text/plain'.
		resp isSuccess ifFalse: [self error: resp content].
		^ STON fromString: resp content
	].

	cws := WebClient webSocket07: url,'/ws',query protocol: 'rmp'.
	cws onMessage: [ :msgSton |
		msg := STON fromString: msgSton.
		callbacks do: [ :callback | callback value: msg ].
	].
	cws fork.