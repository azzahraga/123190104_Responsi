import 'package:flutter/material.dart';

class DetailKarakter extends StatelessWidget {
  const DetailKarakter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Karakter"),
      ),
      body: Column(
        children: [
          Image.network(src)
        ],
      ),
    );
  }
}
