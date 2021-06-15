baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'SwaLint' with: [
	                        spec
	                                repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
				package: 'Liquid-Core';
				package: 'Liquid-Tests' with: [spec requires: #('default' 'SwaLint')];
				yourself.
			spec
				group: 'default' with: #('Liquid-Core');
				group: 'tests' with: #('Liquid-Tests')];
				yourself