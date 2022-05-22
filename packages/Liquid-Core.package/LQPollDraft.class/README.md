A LQPollDraft is created by a creator in the LQHostMenu before the Poll is started.
Each LQPoll references exactly one LQPollDraft, but a LQPollDraft can belong to multiple LQPolls (Note: This last feature has not been implemented yet, 07/2021, but is theoretically supported by the data structure).

Notable Instance Variables:
id: A randomly generated UUID.
questionList: An OrderedCollection of LQQuestions. Note: (05/2022) multiple questions are supported from now on.

"Note: Currently (07/2021) the data structure supports multiple questions in one poll. even though the remainder of the application uses only the first entry of questionList, as required by the customer. Entries such as 'self poll pollDraft questionList first' are therefore the norm."