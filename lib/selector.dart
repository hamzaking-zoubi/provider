import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class consumer extends StatefulWidget {
  const consumer({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return consumerState();
  }
}

class consumerState extends State<consumer> {
  String name = "Welcom";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (context) => Model(),
      child:Scaffold(
      appBar:AppBar(title:Text("selector") ,) ,

       body:  ListView(
          children:<Widget> [

            Selector<Model, int>(
                selector:(context,prov1)=>prov1.showsone ,
                builder: (context, model, child) {
                  print("1");
                  return Text("${model}");
                }),
            SizedBox(height: 20,),
            Selector<Model,String>(selector:(context,prov1)=>prov1.showsteo ,builder: (context, model, child) {
              print("2");
              return Text(model);
            }),
            SizedBox(height: 20,),
            Consumer<Model>(builder: (context, model, child) {
              return MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print("3");
                  model.dosomething1();
                },
                child: Text("Do some thing" + "${model.showsomething1}"),
              );
            }),
          ],
        ),



      )

    );
  }
}

class Model with ChangeNotifier {
  int showsomething1 = 1;
  String showsomething2 = "showsomething2";

  get showsone => showsomething1;

  get showsteo => showsomething2;

  dosomething1() {
    showsomething1 =showsomething1+1;

    notifyListeners();
  }

  dosomething2() {
    showsomething2 = "yes provider2";

    notifyListeners();
  }
}
