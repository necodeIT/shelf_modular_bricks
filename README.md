# Flutter Modular Bricks

Bricks for working with [flutter_modular](https://pub.dev/packages/flutter_modular).

## Global Bricks

To bootstrap your projects install these bricks globally:

```bash
mason add -g app --git-url https://github.com/mcquenji/flutter_modular_bricks --git-path app
mason add -g package --git-url https://github.com/mcquenji/flutter_modular_bricks --git-path package
```

Now you can use the following commands to create your new app:

```bash
mason make app
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

### Installation

To use the bricks in your project, init you project using `mason init`. Then add the bricks to your project by pasting the following code in your `mason.yaml` file:

```yaml
bricks:
  datasource:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: datasource
  datasource-impl:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: datasource-impl
  guard:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: guard
  model:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: model
  module:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: module
  repo:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: repo
  screen:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: screen
  service:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: service
  service-impl:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: service-impl
  util:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: util
  widget:
    git:
      url: https://github.com/mcquenji/flutter_modular_bricks
      path: widget
```

After adding the bricks to your `mason.yaml` file, run `mason get` to download the bricks into your project.
