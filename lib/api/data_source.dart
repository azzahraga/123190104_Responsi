import 'package:responsi/api/base_network.dart';
import 'package:responsi/model/model_karakter.dart';
import 'package:responsi/model/model_weapon.dart';

class CharacterDataSource {
  static CharacterDataSource instance = CharacterDataSource();
  Future<Map<String, dynamic>> loadCharacters(String Name) {
    return BaseNetwork.get("characters");
  }
}

class WeaponDataSource {
  static WeaponDataSource instance = WeaponDataSource();
  Future<Map<String, dynamic>> loadWeapons(String name) {
    return BaseNetwork.get("weapons");
  }
}

class CharacterDetailDataSource {
  static CharacterDetailDataSource instance = CharacterDetailDataSource();
  Future<List<KarakterModel>> loadCharacters(String character) {
    return BaseNetwork.getListKarakter("characters/$character");

  }
}

class WeaponDetailDataSource {
  static WeaponDetailDataSource instance = WeaponDetailDataSource();
  Future<List<WeaponModel>> loadWeapon(String weapon) {
    return BaseNetwork.getListWeapon("weapons/$weapon");
  }
}