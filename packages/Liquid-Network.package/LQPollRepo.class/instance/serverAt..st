communication
serverAt: key
	^ WebClient httpGet: self url, '/?id=', key, '&pwd=', self currentPassword
