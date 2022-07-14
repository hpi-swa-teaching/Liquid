communication
groupAt: key
	^ WebClient httpGet: self url, '/?message=getGroup&id=', key, '&pwd=', self currentPassword
