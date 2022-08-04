communication
serverAt: key

	^ WebClient httpGet: self url, '/?id=', key, '&token=', self token
