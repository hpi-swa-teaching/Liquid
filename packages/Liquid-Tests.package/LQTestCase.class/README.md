The LQTestCase is an abstract superclass to all LQTests. 
It implements the setUp and the tearDown methods to save and then reset all global state before each test to ensure their independence from each other.
It then restores all global state after the tests are finished.

Instance Variables
	savedUserSetRepo:				<LQUserSetRepo>
	savedPollRepo:							<LQPollRepo>
	savedServerPollRepo:			<LQLocalObjectRepo>
	savedPasswordManager:	<LQPasswordManager>
	savedAnsweredPollIds:			<Set>
	wasServerActive:						<Boolean>

All inctance variables are used to store the global state of the Image in order to restore it later.

