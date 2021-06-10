listening
onRequest: req
	| id message response item arguments |
	req isPostRequest ifTrue: [
		id := req fields at: 'id'.
		self objectRepo at: id put: (STON fromString: req content).
		^ req send200Response: 'OK'.
	].
   req isPutRequest ifTrue: [
		id := req fields at: 'id'.
		item := self objectRepo at: id.
		item ifNil: [^ req send404Response].
		message := req fields at: 'message'.
		arguments := STON fromString: (req fields at: 'args').
		arguments replaceAll: #sse with: [ :value | req stream nextPutAll: (STON toString: value); crlf; flush ].
		response := item perform: (message asSymbol) withArguments: arguments.
		^ req send200Response: (STON toString: response).
	].
	req isGetRequest ifTrue: [
		id := req fields at: 'id'.
		item := self objectRepo at: id.
	    item ifNil: [^ req send404Response].
		^req send200Response: (STON toString: item). 
	].

	