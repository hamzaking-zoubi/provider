import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class vs extends StatefulWidget {
  const vs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return vsState();
  }
}

class vsState extends State<vs> {
  String name = "Welcom";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: ListView(
          children: <Widget>[
            Consumer<Model>(builder: (context, model, child) {
              return Center(child: Text("${model.name}"));
            }),
            SizedBox(
              height: 20,
            ),
            Consumer<Model>(builder: (context, model, child) {
              return Center(
                child: MaterialButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    model.Changname1();
                  },
                  child: Text("Do some thing1"),
                ),
              );
            }),
            Consumer<Model>(builder: (context, model, child) {
              return Center(
                child: MaterialButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    model.Changname2();
                  },
                  child: Text("Do some thing2"),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name = "welcom";

  Changname1() {
    name = "hamza1";
    print(name);
    notifyListeners();
  }

  Changname2() {
    name = "hamza2";
    print(name);
    notifyListeners();
  }
}
