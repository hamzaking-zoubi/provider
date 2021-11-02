import 'package:flutter/material.dart';
import 'package:flutter_app_provider/Item.dart';
import 'package:flutter_app_provider/cheackout.dart';
import 'package:provider/provider.dart';

import 'Model/Cart.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}

class homeState extends State<home> {
  List<Item> item = [
    Item(name: "samsung alra 20", price: 23),
    Item(name: "samsung alra 25", price: 266),
  ];

  @override
  Widget build(BuildContext context) {
    var cart1=Provider.of<Cart>(context,listen:true );
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.school),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => cheackout()));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text("${cart1.count}")
            // Consumer<Cart>(
            //   builder: (BuildContext context, value, Widget? child) {
            //     return Text("${value.count}");
            //   },
            // ),
          ),
        ],
        title: Text("Provider"),
      ),
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, i) {
            return Consumer<Cart>(
                builder: (context, value, child) => Card(
                      child: ListTile(
                        title: Text("${item[i].name}"),
                        trailing: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            value.add(item[i]);
                          },
                        ),
                      ),
                    ));
          }),
    );
  }
}
