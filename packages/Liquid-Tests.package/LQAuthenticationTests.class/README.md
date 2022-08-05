LQAuthenticationTests is a class containing the tests for the Authentication Process at LQPollRepo.

It ensures that the Server answers in the expected way and is reachable when intended.

Instance Variables
	poll:				<LQPoll>
	poll2:			<LQPoll>
	user1:			<LQUser>
	user2:			<LQUser>
	user3:			<LQUser>
	userSet:		<LQUserSet>
	userSet2: <LQUserSet>

poll
	a poll used in tests; contains userSet

poll2
	another poll used in tests; contains userSet2

user1
	a user used in tests; contained in userSet

user2
	a user used in tests; contained in userSet

user3
	a user used in tests; contained in userSet2

userSet
	a userSet used for testing; containing user1 and user2; contained in poll

userSet2
	another userSet used for testing; containing user3; contained in poll2
