A LQPollIntegrationTests is a parent class for all Tests that use a LQPoll and it's parts.

Instance Variables
	as1:			<LQAnswerSet>
	as2:			<LQAnswerSet>
	poll:			<LQPoll>
	q1:			<LQChoicesQuestion>
	q1a1:			<LQChoice>
	q1a2:			<LQChoice>
	q2:			<LQChoicesQuestion>
	q2a1:			<LQChoice>
	q2a2:			<LQChoice>

as1
	an LQAnswerSet containing q1a1 and q1a2

as2
	an LQAnswerSet containing q2a1 and q2a2

poll
	an LQPoll used for testing; containig pollDraft

q1
	an LQChoicesQuestion used for testing; contained in pollDraft; contains q1a1 and q1a2

q1a1
	an LQChoice used for testing; contained in q1

q1a2
	an LQChoice used for testing; contained in q1

q2
	an LQChoicesQuestion used for testing; contained in pollDraft; contains q2a1 and q2a2

q2a1
	an LQChoice used for testing; contained in q2

q2a2
	an LQChoice used for testing; contained in q2
