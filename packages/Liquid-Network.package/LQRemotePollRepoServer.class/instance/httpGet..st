request handlers
httpGet: req

	"WebRequest does not have 401 error code so 400 is used instead"
	| poll id |
	id := (req fields at: 'id').
	Transcript show: ('ID: ', id);cr.
	(self class pollRepo includesKey: id) 
		ifFalse: [^ req send404Response];
		ifTrue: [poll := (self class pollRepo at: id)].
	(poll requiresAuthentication)
		ifTrue: 
				[((poll myUserSet) containsUserWithID: (req fields at: 'userID' ifAbsent: 
								[^req send400Response]))
					ifFalse: [^req send400Response]].
				
	req send200Response: (STON toString: poll)