import 'package:flutter/material.dart';

class DetailWeapon extends StatelessWidget {
  const DetailWeapon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Weapon"),
      ),
      body: Column(
        children: [
          Image.network(src)
        ],
      ),
    );
  }
}
