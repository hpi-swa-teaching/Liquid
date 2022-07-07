modifying
sendMails
	
	| countCompleted |
	self mailSender ifEmpty: 
			[UIManager default inform: 'No Sender Mail Given'.
			^self].
		
	countCompleted := 0.
	self openProgressBar.
	
	[self poll myUserSet userEntries do:	 
			[:user | 
			countCompleted := countCompleted + 1.
			self updateProgressBarWithCompleted: countCompleted.
			self sendMailFor: user].
		self closeProgressBar] fork