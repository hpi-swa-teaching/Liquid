LQGroupExclusionEditorTests contains the tests for LQGroupExclusionEditor in Liquid-UI.

It drives the UIManager dialogs via ProvideAnswerNotification (see LQTestCase>>run:answering:).

Instance Variables
	editor:				<LQGroupExclusionEditor>
	pollDraft:			<LQPollDraft>
	questionBuilder:	<LQMultiChoiceQuestionBuilder>
	userSet:			<LQUserSet>

editor
	- the editor under test

pollDraft
	- a draft referencing userSet

questionBuilder
	- builder holding a multiple choice question with two choices

userSet
	- fixture user set providing the groups group1 and group2