modifying
createPoll

	| draft q1 |
	draft := LQPollDraft new.
	q1 := LQChoicesQuestion new.
	draft addQuestion: q1.
	ToolBuilder open: (LQPollDraftBuilder new pollDraft: draft).
	"LQQuestionBuilder openOn: draft"