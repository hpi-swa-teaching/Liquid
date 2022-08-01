communication
groupAt: key
	^ (WebClient httpGet: self url, '/?message=getGroup&id=', key, '&token=', self token) content
