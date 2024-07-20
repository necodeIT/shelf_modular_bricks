import 'package:mcquenji_core/mcquenji_core.dart';

abstract class {{name.pascalCase()}}Service extends Service{
  @override
  String get name => "{{name.pascalCase()}}";

  @override
  void dispose() {}
}