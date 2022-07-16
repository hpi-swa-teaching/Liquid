printing
mailMapping

	^ Dictionary new
		at: '{{poll-id}}' put: self id;
		yourself.

	"^{'{{poll-id}}' -> self id.
		'{{poll-title}}' -> self pollDraft title} asDictionary"