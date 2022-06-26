tests
testPollDraftBuilderCanBeBuilt

	"| pollDraftBuilder |
	
	pollDraftBuilder := LQPollDraftBuilder openOn: (self pollDraft).
	
	ToolBuilder open: pollDraftBuilder.
	
	pollDraftBuilder destroy"