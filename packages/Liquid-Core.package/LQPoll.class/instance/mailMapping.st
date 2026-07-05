printing
mailMapping

	^ Dictionary new
		at: '{{poll-id}}' put: self id;
		at: '{{poll-title}}' put: self pollDraft title;
		at: '{{results}}' put: self resultsSummary;
		yourself