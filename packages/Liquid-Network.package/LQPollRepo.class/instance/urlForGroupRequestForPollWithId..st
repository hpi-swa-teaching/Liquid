communication
urlForGroupRequestForPollWithId: aString
	
 	^ self url, '/?message=getGroup&id=', aString, '&token=', self token