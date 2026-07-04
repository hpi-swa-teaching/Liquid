accessing
timeRemainingBar

	| fraction bars spaces total |
	total := 30.
	fraction := self fractionRemaining.
	bars := (fraction * total) rounded min: total max: 0.
	spaces := total - bars.
	^ '[', (String new: bars withAll: $=), (String new: spaces withAll: $-), ']  ', self timeRemaining
