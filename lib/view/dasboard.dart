import 'package:flutter/material.dart';
import 'package:responsi/view/menu_list_karakter.dart';
import 'package:responsi/view/menu_list_weapon.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({Key? key}) : super(key: key);

  @override
  _DasboardState createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xFF5C6065),
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
                Image.asset('assets/images/genshin_impact_logo.png'),
                SizedBox(width: 20),

              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ListKarakter(),
                    ),
                  );
                }, // Respon ketika button ditekan
                child: Text("Karakter"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ListWeapon(),
                    ),
                  );
                }, // Respon ketika button ditekan
                child: Text("Weapon"),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
//
// Widget getBody(){
//
// }
