as yet unclassified
at: key ifAbsent:do
	^ DelayMessageDecorator on: (super at: key ifAbsent: do)