# Flutter Modular Bricks

Bricks for working with [shelf_modular](https://pub.dev/packages/shelf_modular).

## Global Bricks

To bootstrap your projects install these bricks globally:

```bash
mason add -g server --git-url https://github.com/necodeIT/shelf_modular_bricks --git-path server
```

Now you can use the following commands to create your new server:

```bash
mason make server
```

or package:

```bash
mason make package
```

## Local Bricks

You can skip this if you've created your project using the global bricks.

### Requirements

You must have [mason_cli](https://pub.dev/packages/mason_cli) installed on your system and your project must have the following dependencies installed:

```yaml
dependencies:
  bloc: ^8.1.4
  shelf_modular: ^2.1.0
  shelf: ^1.4.2
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

### Installation

To use the bricks in your project, init you project using `mason init`. Then add the bricks to your project by pasting the following code in your `mason.yaml` file:

```yaml
bricks:
  datasource:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: datasource
  datasource-impl:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: datasource-impl
  resource:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: resource
  guard:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: guard
  model:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: model
  module:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: module
  handler:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: handler
  service:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: service
  service-impl:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: service-impl
  util:
    git:
      url: https://github.com/necodeIT/shelf_modular_bricks
      path: util
```

After adding the bricks to your `mason.yaml` file, run `mason get` to download the bricks into your project.
