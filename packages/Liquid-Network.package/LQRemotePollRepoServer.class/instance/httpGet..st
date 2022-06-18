request handlers
httpGet: req

	| poll id |
	self halt.
	id := (req fields at: 'id').
	(self objectRepo includesKey: id) 
		ifFalse: [^ req send404Response];
		ifTrue: [poll := (self objectRepo at: id)].
	(poll requiresAuthentication)
		ifTrue: 
				[((poll myUserSet userEntries) includesKey: (req fields at: 'userID' ifAbsent: 
								[^self class send401ResponseCode: req]))
					ifFalse: [^self class send401ResponseCode: req]].
				
	req send200Response: (STON toString: poll)