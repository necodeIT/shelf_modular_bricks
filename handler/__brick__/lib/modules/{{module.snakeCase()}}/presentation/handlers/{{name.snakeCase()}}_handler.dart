import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:shelf_modular/shelf_modular.dart';
import 'package:shelf/shelf.dart';


Future<Response> {{name.camelCase()}}Handler(Request request, Injector i, ModularRouteArgs args) async {
  return Response.ok('Hello, World!');
}