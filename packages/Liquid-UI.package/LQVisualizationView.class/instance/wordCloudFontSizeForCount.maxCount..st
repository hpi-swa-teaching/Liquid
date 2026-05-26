visualization
wordCloudFontSizeForCount: aCount maxCount: aMaxCount

	| ratio |
	ratio := aCount asFloat / aMaxCount asFloat.
	^ (self wordCloudMinFontSize + (ratio * (self wordCloudMaxFontSize - self wordCloudMinFontSize))) rounded
