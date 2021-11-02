import 'package:flutter/material.dart';
import 'package:flutter_app_provider/Item.dart';
import 'package:flutter_app_provider/home.dart';
import 'package:provider/provider.dart';

import './Model/Cart.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return Cart();
      },
      child: MaterialApp(
        title: "Smart App",
        debugShowCheckedModeBanner: false,
         debugShowMaterialGrid: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: home(),
      ),
    );
  }
}
