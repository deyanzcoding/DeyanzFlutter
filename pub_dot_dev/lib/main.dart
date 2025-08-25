import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Lorem Ipsum : ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              //using custom icons using pub.dev website
              Icon(FontAwesomeIcons.house),
              Icon(CupertinoIcons.add),
              Icon(Icons.add),
              ReadMoreText(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                trimMode: TrimMode.Line,
                trimLines: 2,
                trimCollapsedText: 'Show all ...',
                trimExpandedText: 'Hide detail',
                moreStyle: TextStyle(color: Colors.red, fontSize: 10),
                lessStyle: TextStyle(color: Colors.red, fontSize: 10),
                style: TextStyle(color: Colors.black38),
              ),
              badges.Badge(
                badgeContent: Icon(Icons.check, color: Colors.white, size: 50, ),
                badgeAnimation: badges.BadgeAnimation.rotation(
                    animationDuration: Duration(seconds: 1),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                  loopAnimation: false,
                  curve: Curves.fastOutSlowIn,
                  colorChangeAnimationCurve: Curves.easeInCubic,
                ),
                badgeStyle: badges.BadgeStyle(
                  shape: badges.BadgeShape.instagram,
                  badgeColor: Colors.blue,
                  borderSide: BorderSide(color: Colors.black, width: 5),
                  borderGradient: badges.BadgeGradient.linear(
                    colors: [Colors.red, Colors.yellow],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                  elevation: 0,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50,),
                  child: Text('Badge', style: TextStyle(color: Colors.blue, fontSize: 30),),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
