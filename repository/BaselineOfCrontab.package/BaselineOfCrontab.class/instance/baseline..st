api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec blessing: #baseline.
			spec
				package: 'Crontab';
				package: 'PetitCrontab'
					with: [  spec requires: #('PetitParser') ];
				package: 'Crontab-Importer'
					with: [ spec requires: #('PetitCrontab' 'Crontab') ];
				package: 'Crontab-Tests'
					with: [ spec requires: #('Crontab') ];
				package: 'Crontab-UI'
					with: [ spec requires: #('Crontab' 'Crontab-Importer') ].
			spec project: 'PetitParser' with: [ 
					spec
						className: 'ConfigurationOfPetitParser';
						version: #stable;
						repository: 'http://smalltalkhub.com/mc/Moose/PetitParser/main' ].
			spec
				group: 'core' with: #('Crontab' 'Crontab-Tests');
				group: 'importer' with: #('core' 'Crontab-Importer');
				group: 'ui' with: #('importer' 'Crontab-UI') ];
				group: 'parser' with: #('PetitCrontab');
				group: 'default' with: #('ui')