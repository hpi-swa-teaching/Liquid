modifying
getPollIdFrom: input with: lastSlashIndex

	^ input copyFrom: lastSlashIndex + 1 to: input size