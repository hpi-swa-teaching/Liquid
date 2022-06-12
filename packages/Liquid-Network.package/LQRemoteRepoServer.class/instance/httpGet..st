request handlers
httpGet: req

	| item id |
	
	id := (req fields at: 'id').
	item := self objectRepo at: id ifAbsent: [^ req send404Response].
	(self objectRepo requiresAuthentication: id) 
		ifTrue: 
				[(((LQUserSetRepo default at: (item userSetID)) userEntries) includesKey: (req fields at: 'pswd' ifAbsent: 
								[^self class send401ResponseCode: req]))
					ifFalse: [^self class send401ResponseCode: req]].
				
	req send200Response: (STON toString: item)