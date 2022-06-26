communication
postToServer: aMessage
	
	^ WebClient httpPost: url, '/?pwd=', self currentPassword,'&id=', id content: (STON toString: aMessage) type: 'text/plain'