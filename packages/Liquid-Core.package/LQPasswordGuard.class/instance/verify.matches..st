hashing
verify: aPassword matches: aHash

	^ (WebUtils md5Digest: aPassword) = aHash