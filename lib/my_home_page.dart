import 'package:akhtar/second_page.dart';
import 'package:akhtar/utills/all_colors.dart';
import 'package:akhtar/utills/all_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
String avatarSrc= "https://i.pinimg.com/474x/82/ab/35/82ab3533ee71daf256f23c1ccf20ad6f--avatar-maker.jpg";
String avatarSrc2= "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png";
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,

          title: Text(Allstrings.akhtaruzZaman),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/imge4.jpeg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop)
            )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: width*0.25,
                      width: width*0.25,

                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(avatarSrc2)
                          ),
                          border: Border.all(width: 3,
                              color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(180)

                      ),
                    ),
                  ),

                  SizedBox(
                    width: width*0.03,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text("3,617", style:
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width*0.055,
                                    color: Colors.black
                                ),),
                                Text(Allstrings.post3617)
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [

                                Text("3.5k", style:
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width*0.055,
                                    color: Colors.black
                                ),),
                                Text(Allstrings.followings3_5k)
                              ],
                            ),
                            Spacer(),


                            Column(
                              children: [
                                Text("100k", style:
                                TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width*0.055,
                                    color: Colors.black
                                ),),
                                Text(Allstrings.comment100k)
                              ],
                            ),
                            Spacer(),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(

                            children: [
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.blueGrey
                                  ),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4, left: 24,right: 24,bottom: 4
                                  ),
                                  child: Text("Messages"),
                                ),
                              ),
                              Spacer(),

                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.blueGrey
                                  ),

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 4, left: 4,right: 4,bottom: 4
                                  ),
                                  child: Icon(Icons.account_circle_rounded,size: 15,),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                  onPressed: (){
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context)=>SecondPage()));
                  },
                  child: Text(Allstrings.gotonextpage)
              )
            ],
          ),
        )

    );
  }
}
