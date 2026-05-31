communication
urlForFullNameRequestForPollWithId: aString

    ^ self url, '/?message=getFullName&id=', aString, '&token=', self token