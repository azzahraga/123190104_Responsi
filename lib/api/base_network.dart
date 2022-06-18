import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:responsi/model/model_karakter.dart';
import 'package:responsi/model/model_weapon.dart';

class BaseNetwork {
  static final String baseUrl = "https://api.genshin.dev";

  static Future<Map<String, dynamic>> get(String partUrl) async {
    final String fullUrl = baseUrl + "/" + partUrl;
    final response = await http.get(Uri.parse(fullUrl));
    return _processResponse(response);
  }

  static Future<List<KarakterModel>> getListKarakter(String partUrl) async {

    final String fullUrl = baseUrl + "/" + partUrl;
    final response = await http.get(Uri.parse(fullUrl));
    return _processResponseListKarakter(response);
  }

  static Future<List<WeaponModel>> getListWeapon(String partUrl) async {

    final String fullUrl = baseUrl + "/" + partUrl;
    final response = await http.get(Uri.parse(fullUrl));
    return _processResponseListWeapon(response);
  }

  static Future<Map<String, dynamic>> _processResponse(
      http.Response response) async {
    final body = response.body;
    if (body.isNotEmpty) {
      final jsonBody = json.decode(body);
      return jsonBody;
    } else {
      return {"error": true};
    }
  }

  static Future<List<KarakterModel>> _processResponseListKarakter(
      http.Response response) async {
      final body = response.body;
      List jsonResponse = json.decode(body);
      return jsonResponse
        .map((p) => KarakterModel.fromJson(p))
        .toList();
  }

  static Future<List<WeaponModel>> _processResponseListWeapon(
      http.Response response) async {
    final body = response.body;
    List jsonResponse = json.decode(body);
    return jsonResponse
        .map((p) => WeaponModel.fromJson(p))
        .toList();
  }

  static void debugPrint(String value) {
    print("[BASE_NETWORK] - $value");
  }
}