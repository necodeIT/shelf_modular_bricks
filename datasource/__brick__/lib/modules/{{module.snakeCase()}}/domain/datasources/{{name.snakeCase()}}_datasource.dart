import 'package:mcquenji_core/mcquenji_core.dart';

abstract class {{name.pascalCase()}}DataSource extends DataSource{
  @override
  String get name => "{{name.pascalCase()}}";

  @override
  void dispose() {}
}