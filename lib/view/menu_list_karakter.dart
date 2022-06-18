import 'package:flutter/material.dart';
import 'package:responsi/api/base_network.dart';
import 'package:responsi/model/model_karakter.dart';

class ListKarakter extends StatelessWidget {
  final String name;
  const ListKarakter({Key? key,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Character"),
        ),
        body: _buildListKarakter(),
    );
  }

  Widget _buildListKarakter(){
    return FutureBuilder<List<KarakterModel>>(
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
