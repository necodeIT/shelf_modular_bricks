import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf/shelf.dart';
import 'package:{{package}}/modules/{{module.snakeCase()}}/{{module.snakeCase()}}.dart';


class {{name.pascalCase()}}Resource extends Resource{
  @override
  void routes(RouteManager r) { }
}