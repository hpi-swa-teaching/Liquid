possible bugs
testNoAssignmentInsideUnwindBlocksShouldBeOutside

	self assertAllZero: (self lint: #smallLintFileBlocks)