import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:{{package}}/modules/{{module.snakeCase()}}/{{module.snakeCase()}}.dart';


class {{name.pascalCase()}}Guard extends RouteGuard{
  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    return true;
  }
}