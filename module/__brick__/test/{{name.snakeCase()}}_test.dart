// ignore_for_file: avoid_print

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package}}/modules/{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
import 'package:logging/logging.dart';

Future<void> main() async {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(print);

  setUp(() {
    Modular.init({{name.pascalCase()}}Module());
  });

  tearDown(() {
    Modular.destroy();
  });

  // Your unit tests here.
}
