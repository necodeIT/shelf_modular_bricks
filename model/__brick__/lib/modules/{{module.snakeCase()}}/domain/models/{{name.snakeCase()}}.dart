import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';
{{^skipSerialization}}part '{{name.snakeCase()}}.g.dart';{{/skipSerialization}}

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  const {{name.pascalCase()}}._();

  const factory {{name.pascalCase()}}({}) = _{{name.pascalCase()}};

  {{^skipSerialization}}factory {{name.pascalCase()}}.fromJson(Map<String, Object?> json) => _${{name.pascalCase()}}FromJson(json);{{/skipSerialization}}
}
