request handlers
httpGet: req

	| poll id |
	id := (req fields at: 'id').
	Transcript show: ('ID: ', id);cr.
	(self class pollRepo includesKey: id) 
		ifFalse: [^ req send404Response];
		ifTrue: [poll := (self class pollRepo at: id)].
	(poll requiresAuthentication)
		ifTrue: 
				[((poll myUserSet) containsUserWithID: (req fields at: 'userID' ifAbsent: 
								[^self class send401ResponseCode: req]))
					ifFalse: [^self class send401ResponseCode: req]].
				
	req send200Response: (STON toString: poll)