testing
testListBucketKeys
	| bucket testKey |
	bucket := self bucketForTesting.
	testKey := 'test-string-for-listing'.
	bucket newObject
		data: 'abc';
		key: testKey;
		store.
	self assert: bucket devModeOnlyListKeys size >= 1