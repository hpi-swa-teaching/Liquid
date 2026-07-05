A LQMatchingPreferencesDialog is a dialog that shows the assignments of participants to options for a poll.

Instance Variables
	assignments:	<anOrderedCollectionOfAssociations>
	matcherClass:	<aMatcher class>
	poll:		<aPoll>

assignments
	- an OrderedCollection of Associations. Each entry maps one participant to their assigned option.

matcherClass
	- the class (subclass of LQMatcher) used to compute the assignments, e.g. LQGreedyMatcher. 

poll
	- the poll whose participants and options are being matched. Provides the data shown in the dialog.