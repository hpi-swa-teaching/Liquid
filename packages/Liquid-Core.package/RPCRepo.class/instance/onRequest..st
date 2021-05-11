as yet unclassified
onRequest: req
	| ston objectToCreate id message response item args |
	req isPostRequest ifTrue: [
		ston := req content.
		self halt.
		objectToCreate := STON fromString: ston.
		id := req fields at: 'id'.
		self register: objectToCreate at: id.
		^ req send200Response: 'OK'.
	].
   req isPutRequest ifTrue: [
		id := req fields at: 'id'.
		item := self items at: id ifAbsent: [
			^ req send404Response.
		].
		message := req fields at: 'message'.
		args := STON fromString: (req fields at: 'args').
		
		args replaceAll: #sse with: [ :value | req stream nextPutAll: (STON toString: value); crlf; flush ].
		response := item perform: (message asSymbol) withArguments: args.
		^ req send200Response: (STON toString: response).
	].
	req isGetRequest ifTrue: [
		id := req fields at: 'id'.
		item := self items at: id ifAbsent: [
			^ req send404Response.
		].
		^req send200Response: (STON toString: item). 
	].

	