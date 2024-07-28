import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final dir = Directory.current.path.split(Platform.pathSeparator).last;

  final name = context.logger.prompt('Package name:', defaultValue: dir);

  context.vars['name'] = name;
}
