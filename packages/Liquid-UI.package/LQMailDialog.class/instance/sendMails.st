modifying
sendMails

	self poll myUserSet userEntries do:	 
			[:user | 
			self sendMailFor: user]