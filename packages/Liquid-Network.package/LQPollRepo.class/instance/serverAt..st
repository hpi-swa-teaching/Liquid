communication
serverAt: key
	^ WebClient httpGet: url, '/?id=', key, '&pwd=', self currentPassword
