accessing
timeRemainingBar

	| frac bars spaces total |
	total := 30.
	frac := self fractionRemaining.
	bars := (frac * total) rounded min: total max: 0.
	spaces := total - bars.
	^ '[', (String new: bars withAll: $=), (String new: spaces withAll: $-), ']  ', self timeRemaining
