request handlers
send401Response: request
	"Send a 401 unauthorized"

	| message |
	message := '<html><head><title>401 Unauthorized</title></head></html>'.
	
	request sendResponseCode: 401
		content: message squeakToUtf8
		type: 'text/plain; charset=utf-8'
		close: true