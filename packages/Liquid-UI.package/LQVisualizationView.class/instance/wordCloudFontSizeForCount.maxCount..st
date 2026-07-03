visualization
wordCloudFontSizeForCount: aCount maxCount: aMaxCount

	| ratio |
	ratio := (aCount - 1) / (aMaxCount - 1 max: 1).
	^ (ratio squared * (self wordCloudMaxFontSize - self wordCloudMinFontSize) + self wordCloudMinFontSize) rounded
