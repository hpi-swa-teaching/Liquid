A LQPreferenceMatcher provides the interface between the actualuser input (preferences) and the matching algorithm chosen by the host.

Instance Variables
	matcherClass:		<aMatcherClass>
	options:		<anArrayOfOptions>
	poll:			<aPoll>
	priorityQuestion:	<aQuestion>
	users:			<aCollectionOfUsers>

matcherClass
	- the concrete subclass of LQMatcher that implements the matching algorithm chosen by the host.

options
	- an Array of the available choices. Each option is assigned to at most one user.

poll
	- the poll containing the preference matching question.

priorityQuestion
	- the question whose answers contain the users ranked preferences. Its answers are the input for the matching algorithm.

users
	- the participants of the poll who answered the priority question. Each user is assigned at most one option.