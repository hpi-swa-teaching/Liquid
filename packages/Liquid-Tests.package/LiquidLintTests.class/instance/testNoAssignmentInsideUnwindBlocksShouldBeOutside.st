as yet unclassified
testNoAssignmentInsideUnwindBlocksShouldBeOutside

	self assertAllZero: (self lint: #smallLintFileBlocks)