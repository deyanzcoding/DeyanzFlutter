import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade200,
          title: Center(child: Text("Lottery App")),
        ),

        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Lottery winning number is : ', style: TextStyle(fontSize: 20),),
                  Text('8', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                ],
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                  ),
                  child: x == 8 ?  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.done, color: Colors.green, size: 50,),
                      SizedBox(height: 15 ,),
                      Text('🎉 Congragulation!!, You won the Lottery', textAlign: TextAlign.center)
                    ],
                  ) :
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.error, color: Colors.red, size: 50,),
                     SizedBox(height: 15 ,),
                      Text('Ohh Sorry 🥺, Try next time\n Your number is : $x', textAlign: TextAlign.center)
                    ],
                  ),
                ),
              )
          ],
        ),


        floatingActionButton: FloatingActionButton(
            onPressed: (){
              x = random.nextInt(10);
              print(x);
               setState(() {

              });
            },
        child: Icon(Icons.refresh),
        ),

      ),
    );
  }
}
