modifying
sendMailFor: aUser

	MailComposition new
		messageText: (self injectUserDataFrom: aUser);
		messageSubject: self mailSubject;
		messageSender: self mailSender;
		messageRecipient: aUser name;
	doSendMail.