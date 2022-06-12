accessing
requiresAuthentication: key
	
	| code |
	code := (WebClient httpGet: url, '/?id=', key) code.
	
	code = 200 ifTrue: [^ false].
	code = 401 ifTrue: [^ true]. "401 Unauthorized"
	
	self error: code.
	