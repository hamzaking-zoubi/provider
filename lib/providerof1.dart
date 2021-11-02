import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class poviderof1 extends StatefulWidget {
  const poviderof1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return poviderof1State();
  }
}

class poviderof1State extends State<poviderof1> {


  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (BuildContext context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Provider"),
        ),
        body: providero(),
      ),
    );
  }
}

class providero extends StatelessWidget {
  const providero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  var model = Provider.of<Model>(context,);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
     //   Center(child: Text(context.which<Model>().name)),
        Center(child: Text("context.read<Model>().name")),
        SizedBox(
          height: 20,
        ),
        Center(
          child: MaterialButton(
            textColor: Colors.white,
            color: Colors.blue,
            onPressed: () {
         // context.read<Model>().Changname();
            },
            child: Text("Do some thing"),
          ),
        )
      ],
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
