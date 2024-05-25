helper methods
createQuestionThree

	^ LQMultChoiceQuestion new choiceList: {
		LQChoice newFrom: 'Allein der Vortrag macht des Redners Glück; Ich fühl es wohl noch bin ich weit zurück.  '
		. LQChoice newFrom: 'Selbst der Taxifahrer kennt mich'  . 
		LQChoice newFrom: '     aaa    ' } asOrderedCollection
