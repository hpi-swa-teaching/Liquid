test
testWhitespaceRemoving
	
	| q1 q2 q3 pollDraft tq1 tq2 tq3 |
	
	q1 := LQChoicesQuestion new choiceList: { 
		'Mary had a little lamb   '
		. 'bidabababadap         ' 
		.  'a b c d e f g h i j k l' } asOrderedCollection.
	q2 := LQChoicesQuestion new choiceList: {
		'Die Sonne tönt nach alter Weise In Brudersphären Wettgesang, Und ihre vorgeschriebne Reise Vollendet sie mit Donnergang  '
		. 'wapdapdabadibadawapdap  ' 
		.  'aaaa bbbbbbb aa aa sssss   ' } asOrderedCollection.
	q3 := LQChoicesQuestion new choiceList: {
		'Allein der Vortrag macht des Redners Glück; Ich fühl es wohl noch bin ich weit zurück.  '
		. 'Selbst der Taxifahrer kennt mich'  . 
		'     aaa    ' } asOrderedCollection.
	
	pollDraft := LQPollDraft new questionList: {q1 . q2 . q3}.
	

	tq1 := {
		'Mary had a little lamb' .
		'bidabababadap'  . 
		'a b c d e f g h i j k l' } asOrderedCollection.
	tq2 := {
		'Die Sonne tönt nach alter Weise In Brudersphären Wettgesang, Und ihre vorgeschriebne Reise Vollendet sie mit Donnergang' .
		'wapdapdabadibadawapdap'  .
		 'aaaa bbbbbbb aa aa sssss' } asOrderedCollection.
	tq3 := {
		'Allein der Vortrag macht des Redners Glück; Ich fühl es wohl noch bin ich weit zurück.'
		. 'Selbst der Taxifahrer kennt mich' 
		.  'aaa' } asOrderedCollection.
	
	pollDraft := LQPollDraftBuilder new withWhitespacesFromQuestionsRemoved: pollDraft.
	
	self assert: tq1 equals: pollDraft questionList first choiceList.
	self assert: tq2 equals: pollDraft questionList second choiceList.
	self assert: tq3 equals: pollDraft questionList third choiceList.
	