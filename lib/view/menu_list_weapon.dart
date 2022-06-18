import 'package:flutter/material.dart';
import 'package:responsi/model/model_weapon.dart';

class ListWeapon extends StatelessWidget {
  const ListWeapon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Character"),
      ),
      body: -_buildListWeapon()
    );
  }
  Widget _buildListWeapon(){
    return FutureBuilder<List<WeaponModel>>(
        future: BaseNetwork.instance.CharacterDataSource(widget.name);,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            // return Card();
            return _buildSuccessRepos(snapshot);
          }
          return _buildLoadingSection();
        });
  }
}
