toolbuilder
buildWith: aBuilder
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: 'Liquid - Set Deadline';
		extent: self extent;
		children: {
			self buildDayListWith: aBuilder.
			self buildMonthListWith: aBuilder.
			self buildYearListWith: aBuilder.
			self buildHourListWith: aBuilder.
			self buildMinuteListWith: aBuilder.
			self buildConfirmButtonWith: aBuilder.
			self buildClearButtonWith: aBuilder};
		yourself)