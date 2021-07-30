accessing
at: key ifAbsent:do
	^ LQDelayMessageDecorator on: (super at: key ifAbsent: do)