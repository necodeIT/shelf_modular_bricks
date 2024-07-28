import 'dart:io';

import 'package:mason/mason.dart';

final verRegex = RegExp(r'^(\d+\.\d+\.\d+)$');

void run(HookContext context) async {
  final dir = Directory.current.path.split(Platform.pathSeparator).last;

  final name = context.logger.prompt('Package name:', defaultValue: dir);

  context.vars['name'] = name;

  final fvmTest = await Process.run(
    'fvm',
    ['--version'],
    runInShell: true,
  );

  final useFvm = fvmTest.exitCode == 0;

  context.vars['useFvm'] = useFvm;

  if (useFvm) {
    context.logger.warn(
      'FVM is not installed. It is recommended to use FVM.\nSee https://fvm.app/ for installation instructions.',
    );
  }

  String flutterVer = '';

  if (fvmTest.exitCode != 0) {
    final flutterVersion = await Process.run(
      'flutter',
      ['--version'],
      runInShell: true,
    );

    if (flutterVersion.exitCode != 0) {
      context.logger.err('Flutter is not installed');
      exit(1);
    }

    flutterVer = flutterVersion.stdout.toString().split(' ')[1];
  } else {
    final fvmFlutterVersion = await Process.run(
      'fvm',
      ['flutter', '--version'],
      runInShell: true,
    );

    flutterVer = fvmFlutterVersion.stdout.toString().split(' ')[1];
  }

  flutterVer = context.logger.prompt(
    'Flutter version:',
    defaultValue: flutterVer,
  );

  if (!verRegex.hasMatch(flutterVer)) {
    context.logger.err('Invalid Flutter version: $flutterVer');
    exit(1);
  }

  context.vars['flutterVer'] = flutterVer;
}
