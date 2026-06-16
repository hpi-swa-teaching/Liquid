handling
sendNotificationsTo: aNewBlock
	"Resume execution using aNewBlock as workBlock value.
	Note that the execution is resumed in signalContext (or outerContext).
	This is done so that inner exception handlers be active during workBlock execution.
	However, our own handlerContext should be deactivated, unless explicitely rearmed."
	| mustDeactivateHandler |
	mustDeactivateHandler := handlerContext notNil and: [handlerContext isHandlerActive not].
	mustDeactivateHandler
		ifTrue:
			["The handlerContext is de-activated during handleSignal:
			But it will be reactivated during unwinding when we will resumeEvaluating:
			That's unwanted, we don't generally want to rearm the handler during workBlock evaluation.
			Hence we have to deactivate it again inside the deferred block."
			self resumeEvaluating:
				[handlerContext deactivateHandler.
				[workBlock value: [ :barVal |
					aNewBlock value: minVal value: maxVal value: barVal]]
						ensure: [handlerContext reactivateHandler]]]
		ifFalse:
			["If the handler is active at this step, then it must have been rearmed
			with a #rearmHandlerDuring:
			It's thus intentional to keep the handler active during workBlock evaluation
			But the ensure: [self disarmHandler] will be evaluated during unwinding when we will resumeEvaluating:
			It is thus necessary to rearm again inside the evaluated block"
			self resumeEvaluating:
				[self rearmHandlerDuring:
					[workBlock value: [ :barVal |
						aNewBlock value: minVal value: maxVal value: barVal]]]]