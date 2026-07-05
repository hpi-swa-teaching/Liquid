printing
resultsSummary

	| stream |
	self answerSets ifEmpty: [^ 'No answers were submitted for this poll.'].
	stream := WriteStream on: String new.
	self pollDraft questionList do: [:question |
		stream nextPutAll: 'Question: ', question title; cr.
		question isFreeTextQuestion
			ifTrue: [self writeFreeTextSummaryFor: question on: stream]
			ifFalse: [self writeChoiceSummaryFor: question on: stream].
		stream nextPutAll: '----------------------------'; cr].
	^ stream contents