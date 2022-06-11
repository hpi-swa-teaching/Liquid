initialize-release
removeKey: key

	items removeKey: key ifAbsent: [self error]