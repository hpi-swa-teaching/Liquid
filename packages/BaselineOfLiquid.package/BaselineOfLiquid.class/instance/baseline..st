baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [spec
				baseline: 'SwaLint'
				with: [spec repository: 'github://hpi-swa-teaching/SwaLint:release/packages'];
				
				baseline: 'StatisticsWorkbench'
				with: [spec repository: 'github://hpi-swa-teaching/StatisticsWorkbench:11245259c9fa9e0be1254a79ee744f28e56894d8/packages'];
				 package: 'Liquid-Core';
				 package: 'Liquid-Network';
				 package: 'Liquid-UI';
				
				package: 'Liquid-Tests'
				with: [spec requires: #('SwaLint' 'default')];
				 yourself.
			spec group: 'libraries' with: #('StatisticsWorkbench');
				 group: 'default' with: #('Liquid-Core' 'Liquid-Network' 'Liquid-UI');
				 group: 'tests' with: #('Liquid-Tests');
				 yourself]