# Flutter Modular Bricks

Bricks for working with [flutter_modular](https://pub.dev/packages/flutter_modular).

## Requirements

You must have [mason_cli](https://pub.dev/packages/mason_cli) installed on your system and your project must have the following dependencies installed:

```yaml
dependencies:
  bloc: ^8.1.4
  flutter_modular: ^6.3.4
  freezed_annotation: ^2.4.4
  json_annotation: ^4.9.0
  mcquenji_core:
    git:
      url: https://github.com/mcquenji/mcquenji_core.git

dev_dependencies:
  flutter_test:
    sdk: flutter
  freezed: ^2.5.2
  json_serializable: ^6.8.0
```

## Installation

To use the bricks in your project, init you project using `mason init`. Then add the bricks to your project by pasting the following code in your `mason.yaml` file:

```yaml
bricks:
  module:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: module
  service:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: service
  datasource:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: datasource
  model:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: model
```

After adding the bricks to your `mason.yaml` file, run `mason get` to download the bricks into your project.
