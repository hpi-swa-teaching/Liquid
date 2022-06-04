test
testWhitespaceRemoving
	
	| q1 q2 q3 pollDraft test1 test2 test3 |
	
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
	

	test1 := {
		'Mary had a little lamb' .
		'bidabababadap'  . 
		'a b c d e f g h i j k l' } asOrderedCollection.
	test2 := {
		'Die Sonne tönt nach alter Weise In Brudersphären Wettgesang, Und ihre vorgeschriebne Reise Vollendet sie mit Donnergang' .
		'wapdapdabadibadawapdap'  .
		 'aaaa bbbbbbb aa aa sssss' } asOrderedCollection.
	test3 := {
		'Allein der Vortrag macht des Redners Glück; Ich fühl es wohl noch bin ich weit zurück.'
		. 'Selbst der Taxifahrer kennt mich' 
		.  'aaa' } asOrderedCollection.
	
	pollDraft := LQPollDraftBuilder new removeWhitespacesFrom: pollDraft.
	
	self assert: test1 equals: pollDraft questionList first choiceList.
	self assert: test2 equals: pollDraft questionList second choiceList.
	self assert: test3 equals: pollDraft questionList third choiceList.
	