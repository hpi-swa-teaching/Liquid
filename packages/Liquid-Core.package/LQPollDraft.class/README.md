A LQPollDraft is created by a creator in the LQHostMenu before the Poll is started.
Each LQPoll references exactly one LQPollDraft, but a LQPollDraft can belong to multiple LQPolls (Note: This last feature has not been implemented yet, 07/2021, but is theoretically supported by the data structure).

Notable Instance Variables:
- id: A randomly generated UUID as string.
- questionList: An OrderedCollection of LQQuestions.