modifying
sendMails
	
	self mailSender ifEmpty: 
			[UIManager default inform: 'No Sender Mail Given'.
			^self].
	self poll myUserSet userEntries do:	 
			[:user | 
			self sendMailFor: user]