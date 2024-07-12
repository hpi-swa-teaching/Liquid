modifying
sendMailFor: aUser

	MailComposition new
		messageText: (self injectUserDataFrom: aUser into: (self injectPollDataInto: self rawMailText));
		messageSubject: (self injectUserDataFrom: aUser into: (self injectPollDataInto: self mailSubject));
		messageSender: self mailSender;
		messageRecipient: aUser mail;
		doSendMail