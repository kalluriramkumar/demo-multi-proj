import ruamel.yaml
import copy

with open('pubspec.yaml', 'r') as pubspec:
    yamlMap = ruamel.yaml.round_trip_load(pubspec, preserve_quotes=True)
    dependencyMap = copy.deepcopy(yamlMap['dependencies'])

    for key, value in dependencyMap.items():
        dependencyMap[key]['git']['ref'] = 'multiply'

    yamlMap['dependency_overrides'] = dependencyMap

with open('pubspec.yaml', 'w') as file:
    documents = ruamel.yaml.round_trip_dump(yamlMap, file, explicit_start=True)
file.close()
