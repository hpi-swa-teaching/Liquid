LQMailTests is a class containing the tests for the class LQMailDialog in Liquid-UI and the general process of sending mails.

It ensures that the mail templating works and that mails are sent correctly.

Instance Variables
	mailDialog:		<LQMailDialog>
	poll:						<LQPoll>
	user1:					<LQUser>
	user2:					<LQUser>
	userSet1:			<LQUserSet>

mailDialog
	the LQMailDialog that is being tested

poll
	an LQPoll used for testing; containig userSet1

user1
	an LQUser used for testing; contained in userSet1

user2
	another LQUser used for testing; contained in userSet1

userSet1
	an LQUserSet used for testing; contained in poll; contains user1 and user2
