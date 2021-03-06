import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsi/view/dasboard.dart';


import 'helper/shared_preference.dart';
import 'model/data_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initiateLocalDB();
  SharedPreference().getLoginStatus().then((status) {
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Dasboard()
    ));
  });
  // runApp(const MyApp());
}

void initiateLocalDB() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DataModelAdapter());
  await Hive.openBox<DataModel>("data");
}

