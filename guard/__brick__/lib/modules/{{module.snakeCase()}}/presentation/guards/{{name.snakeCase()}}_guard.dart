import 'dart:async';

import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf/shelf.dart';
import 'package:{{package}}/modules/{{module.snakeCase()}}/{{module.snakeCase()}}.dart';


class {{name.pascalCase()}}Guard extends RouteGuard{
  @override
  FutureOr<bool> canActivate(Request request, Route route) async {
    return true;
  }
}