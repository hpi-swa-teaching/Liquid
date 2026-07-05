printing
writeChoiceSummaryFor: aQuestion on: aStream

	| names votes pairs sorted |
	names := self getChoiceNamesFor: aQuestion.
	votes := self getVotedChoicesPerChoiceFor: aQuestion.
	pairs := names with: votes collect: [:aName :count | {aName. count}].
	sorted := pairs asSortedCollection: [:a :b | a second >= b second].
	sorted do: [:pair |
		aStream nextPutAll: pair first, ': ', pair second printString, ' vote(s)'; cr]