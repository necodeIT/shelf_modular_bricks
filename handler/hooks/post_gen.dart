import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final name = (context.vars['name'] as String).snakeCase;
  final module = (context.vars['module'] as String).snakeCase;

  final f = File('lib/modules/$module/presentation/handlers/handlers.dart');

  context.logger.info("Exporting screen at ${f.path}");

  f.writeAsString("export '${name}_handler.dart';", mode: FileMode.append);

  context.logger.success("Successfully exported handler!");
}
