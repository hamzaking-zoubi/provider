import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String name = "Welcom";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: Consumer<Model>(
          builder: (BuildContext context, model, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text("${model.name}")),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: MaterialButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      model.Changname();
                    },
                    child: Text("Do some thing"),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name = "welcom";

  Changname() {
    name = "hamza";
    print(name);
    notifyListeners();
  }
}
