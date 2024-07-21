import 'dart:io';
import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

void run(HookContext context) {
  context.logger.info('Reading package name');

  var f = File('pubspec.yaml');

  if (!f.existsSync()) {
    context.logger.err('Not a flutter project: ${f.path} not found');
    exit(1);
  }

  final pubspec = loadYaml(f.readAsStringSync());

  context.vars['package'] = pubspec['name'];

  context.logger.success('Successfully read package name!');
}
