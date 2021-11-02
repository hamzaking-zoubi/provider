import 'package:flutter/material.dart';
import 'package:flutter_app_provider/Item.dart';
import 'package:flutter_app_provider/selector.dart';
import 'package:provider/provider.dart';

import 'Model/Cart.dart';

class cheackout extends StatefulWidget {
  const cheackout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return cheackoutState();
  }
}

class cheackoutState extends State<cheackout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("cheakout"),
      ),
      body:Consumer<Cart>(builder:(context, item, child) => ListView.builder(
          itemCount: item.count,
          itemBuilder: (context, i) {
            return Consumer<Cart>(
                builder: (context, value, child) => Card(
                  child: ListTile(
                    title: Text("${item.listt[i].name}"),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        value.remove(item.listt[i]);
                      },
                    ),
                  ),
                ));
          }) ,),
    );
  }
}
