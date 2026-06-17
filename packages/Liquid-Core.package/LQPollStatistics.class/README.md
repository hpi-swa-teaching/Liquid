LQPollStatistics is a class that contains the methods to compute basic statistics for a single LQPoll: vote counts per choice (countNumberOfAnswersWithChoice:ForQuestion:), the votes per choice for a question (getVotedChoicesPerChoiceFor:), whether a question has any
votes (hasVotesForQuestion:), whether a question is answered by a user (answeredByUser:), whether a question has enough votes (minSampleSize & haslowSampleSize).


Instance Variables
	poll:		<aPoll>

poll
	- the poll whose answer sets and questions are evaluated
