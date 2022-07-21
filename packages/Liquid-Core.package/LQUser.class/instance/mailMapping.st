accessing
mailMapping

	^ Dictionary new
			at: '{{firstname}}' put: self firstname;
			at: '{{surname}}' put: self surname;
			at: '{{mail}}' put: self mail;
			at: '{{pwd}}' put: self pwd;
			yourself