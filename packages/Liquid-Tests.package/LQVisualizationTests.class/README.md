LQVisualizationTests is a class containing the tests for the classes LQVisualizationView and LQVisualizationControls in Liquid-UI.

It ensures that contents are displayed the intended way.

Instance Variables
	poll:				<LQPoll>
	pollDraft:	<LQPollDraft>
	q1:					<LQChoicesQuestion>
	q1a1:			<LQChoice>
	q1a2:			<LQChoice>
	q2:					<LQChoicesQuestion>
	q2a1:			<LQChoice>
	q2a2:			<LQChoice>
	visualization	Controls:	<LQVisualizationControls>


poll
	an LQPoll used for testing; containig pollDraft
	
pollDraft
	anLQPollDraft used for testing; contained in poll

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

visualization	Controls
	the LQVisualizationControls that is being tested
