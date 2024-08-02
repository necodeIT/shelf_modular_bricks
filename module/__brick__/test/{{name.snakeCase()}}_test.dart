// ignore_for_file: avoid_print

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package}}/modules/auth/auth.dart';
import 'package:logging/logging.dart';

Future<void> main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(print);

  Modular.bindModule({{name.pascalCase()}}Module());

  // Your unit tests here.
}
