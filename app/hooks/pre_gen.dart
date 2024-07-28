import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final dir = Directory.current.path.split(Platform.pathSeparator).last;

  final name = context.logger.prompt('App name:', defaultValue: dir);

  context.vars['name'] = name;

  final platforms = context.vars['platforms'];

  context.vars['webEnabled'] = platforms.contains('web');
  context.vars['iosEnabled'] = platforms.contains('ios');
  context.vars['androidEnabled'] = platforms.contains('android');
  context.vars['macosEnabled'] = platforms.contains('macos');
  context.vars['windowsEnabled'] = platforms.contains('windows');
  context.vars['linuxEnabled'] = platforms.contains('linux');
}
