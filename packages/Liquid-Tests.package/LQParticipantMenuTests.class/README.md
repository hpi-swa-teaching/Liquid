A collection of tests concerning themselves with everything related to the LQParticipantMenu.

It ensures that the displayed contents are correct.

Instance Variables
	poll:		<LQPoll>
	q1:			<LQChoicesQuestion>
	q1c1:	<LQChoice>
	q1c2:	<LQChoice>
	q2:			<LQChoicesQuestion>
	q2c1:	<LQChoice>
	q2c2:	<LQChoice>
	participantMenu:		<LQParticipantMenu>


poll
	an LQPoll used for testing; containig q1

q1
	an LQChoicesQuestion used for testing; contained in poll; contains q1c1 and q1c2

q1c1
	an LQChoice used for testing; contained in q1

q1c2
	an LQChoice used for testing; contained in q1

q2
	an LQChoicesQuestion used for testing; contained in poll; contains q2c1 and q2c2

q2c1
	an LQChoice used for testing; contained in q2

q2c2
	an LQChoice used for testing; contained in q2

participantMenu
	the LQParticipantMenu that is being tested
