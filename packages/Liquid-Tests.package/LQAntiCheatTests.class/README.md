LQAntiCHeatTests is a class containing the tests for the class LQAntiCheat in Liquid-Core.

It ensures that groub based answer exclusion is working and one can only answer polls when one is allowed to do so.

Instance Variables
	poll:		<LQPoll>
	user1:	<LQUser>
	user2:	<LQUser>
	userSet:				<LQUserSet>
	answerSet1:	<LQAnswerSet>
	answerSet2: 	<LQAnswerSet>
	q1:	 		<LQChoicesQuestion>

poll
	a poll used in tests; contains userSet 

user1
	a user used in tests; contained in userSet

user2
	a user used in tests; contained in usetrSet

userSet
	a userSet used for testing; containing user1 and user2; contained in poll
	
answerSet1
	an answerSet for poll; used for testing
	
answerSet2
	an answerSet for poll; used for testing
	
q1
	the first Question in poll; used for testing
