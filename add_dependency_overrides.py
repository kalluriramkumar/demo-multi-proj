import argparse
import ruamel.yaml
import copy

# Initialize parser
parser = argparse.ArgumentParser()
# Adding optional argument
parser.add_argument("-b", "--branch")

# Read arguments from command line
branch = parser.parse_args().branch


def add_dependency_overrides(project):
    with open(project + '/pubspec.yaml', 'r') as pubspec:
        yaml_map = ruamel.yaml.round_trip_load(pubspec, preserve_quotes=True)
    dependency_map = copy.deepcopy(yaml_map['dependencies'])

    for key, value in dependency_map.items():
        dependency_map[key]['git']['ref'] = branch

    yaml_map['dependency_overrides'] = dependency_map

    with open(project + '/pubspec.yaml', 'w') as file:
        ruamel.yaml.round_trip_dump(yaml_map, file, explicit_start=True)
    file.close()


project_list = ['project2']

for project in project_list:
    add_dependency_overrides(project)
