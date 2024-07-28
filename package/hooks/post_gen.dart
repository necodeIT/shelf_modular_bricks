import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final workDir = '.';

  final progress = context.logger.progress('Downloading packages');

  final fvmTest = await Process.run(
    'fvm',
    ['--version'],
    runInShell: true,
    workingDirectory: workDir,
  );

  final useFvm = fvmTest.exitCode == 0;

  if (!useFvm) {
    context.logger.warn(
      'FVM is not installed. It is recommended to use FVM.\nSee https://fvm.app/ for installation instructions.',
    );
  } else {
    final fvm = context.logger.progress('FVM detected. Configuring');

    final fvmUse = await Process.run(
      'fvm',
      ['use', '-f'],
      runInShell: true,
      workingDirectory: workDir,
    );

    if (await fvmUse.exitCode != 0) {
      fvm.fail('Failed to configure FVM: ${fvmUse.stderr}');

      exit(1);
    }

    fvm.complete('FVM configured');
  }

  final result = await Process.run(
    useFvm ? 'fvm' : 'flutter',
    [useFvm ? 'flutter' : '', 'pub', 'get'],
    runInShell: true,
    workingDirectory: workDir,
  );

  if (result.exitCode != 0) {
    progress.fail('Failed to fetch dependencies: ${result.stderr}');

    exit(1);
  }

  progress.complete('Downloaded packages');

  final mason = context.logger.progress('Downloading bricks');

  final masonProc = await Process.run(
    'mason',
    ['get'],
    runInShell: true,
    workingDirectory: workDir,
  );

  if (masonProc.exitCode != 0) {
    mason.fail('Failed to fetch bricks: ${masonProc.stderr}');

    exit(1);
  }

  mason.complete('Downloaded bricks');

  context.logger.warn(
    'Please remember to edit `README.md` to match your project and update the `description` and `homepage` in the `pubspec.yaml` file.',
  );

  context.logger.info('All done! 🚀\nRun `mason make module` to get started.');
}
