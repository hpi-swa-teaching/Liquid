The poll Object participants get access to when entering the LQParticipantMenu. A LQPoll always has a reference to its LQPollDraft, where LQQuestions are saved.

Notable Instance Variables:
id: A randomly generated UUID.
isOpen: Indicated whether or not participants can still submit LQAnswerSets.
answerSets: An OrderedCollection of all LQAnswerSets submitted by Participants. Number of Participants = answerSets size.
