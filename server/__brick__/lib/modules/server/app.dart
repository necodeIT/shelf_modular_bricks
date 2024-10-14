library {{name}}.modules.server;

import 'package:shelf_modular/shelf_modular.dart';
import 'package:mcquenji_core/mcquenji_core.dart';

export 'domain/domain.dart';
export 'presentation/presentation.dart';

/// Root module of the application.
class AppModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {}
}
