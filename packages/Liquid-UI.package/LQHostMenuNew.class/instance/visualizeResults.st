modifying
visualizeResults
	"| pollNameInput
	foundPoll |
	currentPoll == 0
	ifFalse: [pollNameInput
	:= UIManager default
	request: 'Enter Poll ID'.
	pollNameInput
	ifEmpty: [^ self].
	foundPoll :=
	LQRemotePollRepoServer
	pollRepo at:
	pollNameInput ifAbsent:
	[^ UIManager default
	inform: 'This poll does
	not exist.'].
	LQVisualizationControls
	openOn: foundPoll]"
	^ self
	