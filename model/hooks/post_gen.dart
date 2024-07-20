import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final name = (context.vars['name'] as String).snakeCase;
  final module = (context.vars['module'] as String).snakeCase;

  final f = File('lib/modules/$module/domain/models/models.dart');

  context.logger.info("Exporting model from ${f.path}");

  f.writeAsString("\nexport '${name}.dart';", mode: FileMode.append);

  context.logger.success("Successfully exported model!");
}
