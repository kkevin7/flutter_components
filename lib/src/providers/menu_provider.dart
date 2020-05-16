import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>>cargarData() async {
    final response = await rootBundle.loadString('data/menu_opts.json');
      Map dataMap = await json.decode(response);
      opciones = dataMap['rutas'];
      print(dataMap['rutas']);
      return opciones;
  }
}

final menuProvider = new _MenuProvider();
