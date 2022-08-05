A LQMailDialog is a toolbuilder-based model that can be used to create a template for the distribution of pollId and credentials for secured polls via mail.
This class is responsible for providing an UI for the template-markup, and triggers the template rendering engine (LQStringProcessor) and uses the MailSender for distribution.

Instance Variables
	mailSender:			<MailSender>
	mailSubject:		<String>
	poll:							<LQPoll>
	progressBar:		<UiProgressBar>
	rawMailText:		<String>

mailSender
	- mailsender object that is responsible for sending the rendered email. This class implements the login with SMTP-Credentials.

mailSubject
	- templated subject (the actual output is rendered via LQStringProcessor)

poll
	- Poll for which pollId and credentials are to be distributed

progressBar
	- progressBar, that indicates how many emails are already sent (one mail for each participant/user in the selected userSet)

rawMailText
	- templated raw text (the actual output is rendered via LQStringProcessor)
