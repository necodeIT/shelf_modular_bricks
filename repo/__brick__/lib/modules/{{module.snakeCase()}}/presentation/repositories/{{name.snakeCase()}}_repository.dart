import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:{{package}}/modules/{{module.snakeCase()}}/{{module.snakeCase()}}.dart';


class {{name.pascalCase()}} extends Repository<Type> {
  {{name.pascalCase()}}() : super(initialValue);

  @override
  void dispose() {}
}
