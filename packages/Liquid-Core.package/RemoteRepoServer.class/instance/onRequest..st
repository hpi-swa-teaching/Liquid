<<<<<<< HEAD
listening
=======
request handlers
>>>>>>> origin/main
onRequest: req 
	req isPutRequest
		ifTrue: [^ self httpPut: req].
	req isPostRequest
		ifTrue: [^ self httpPost: req].
	req isGetRequest
		ifTrue: [^ self httpGet: req]
