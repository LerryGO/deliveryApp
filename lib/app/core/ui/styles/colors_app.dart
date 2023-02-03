import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secondary => const Color(0XFFf88b0c);
}

// Faz extenção com o BuildContext para ser acessado diretamente pelo context
extension ColorsAppExcetions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
