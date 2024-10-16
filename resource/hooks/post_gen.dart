import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final name = (context.vars['name'] as String).snakeCase;
  final module = (context.vars['module'] as String).snakeCase;

  final f = File('lib/modules/$module/presentation/resources/resources.dart');

  context.logger.info("Exporting resource at ${f.path}");

  f.writeAsString("export '${name}_resource.dart';", mode: FileMode.append);

  context.logger.success("Successfully exported resource!");
}
