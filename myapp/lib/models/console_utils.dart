import 'dart:convert';
import 'dart:io';

class consoleUtils {
  static String lerStringComtexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComtextoComSaida(String texto, String valorSaida) {

    do {
      try {
        var value = lerStringComtexto(texto);
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoubleComtexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
