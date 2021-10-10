import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText1="Button One";
bool imgVis1=false;
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("akhtaruz zaman"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                  color: Colors.purple,
                  child: Text(btnText1),
                  onPressed: (){
                    setState(() {
                    btnText1="Button Pressed";
                      imgVis1=true;
                    });

                  }),
              Visibility(
                visible: imgVis1,
                child: Container(
                    height: 500,
                    width: 400,
                    child: Image.network("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg")
                ),

              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                        width: 250,
                        child: Image.asset("assets/images/imge4.jpeg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/imge4.jpeg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/imge4.jpeg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/imge4.jpeg")
                    ),
                    Container(
                        height: 200,
                        width: 250,
                        child: Image.asset("assets/images/imge4.jpeg")
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
