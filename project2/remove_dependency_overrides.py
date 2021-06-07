import ruamel.yaml
import copy

with open('pubspec.yaml', 'r') as pubspec:
    yamlMap = ruamel.yaml.round_trip_load(pubspec, preserve_quotes=True)
    del yamlMap['dependency_overrides']

with open('pubspec.yaml', 'w') as file:
    documents = ruamel.yaml.round_trip_dump(yamlMap, file, explicit_start=True)
file.close()
