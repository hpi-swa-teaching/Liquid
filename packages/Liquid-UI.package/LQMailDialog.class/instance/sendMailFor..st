as yet unclassified
sendMailFor: aUser

	MailComposition new
	messageText: self replacedMailText;
	messageSubject: self mailSubject;
	messageSender: self mailSender;
	messageRecipient: aUser name;
	doSendMail.