import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp", //app title
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

// for making any page for home page
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Deyan',
      'Hasnain',
      'Dalil',
      'Younus',
      'Yaseen',
      'Bilal',
      'Shoib'
    ]; //this line is only for ListView
    return Scaffold(
      // /Scaffold or MaterialApp
      appBar: AppBar(
        title: Text('Dashboard'), //app bar title
      ),

      body:
          /*Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.green,

          child: Center( child: Text('This is box', style: TextStyle(color: Colors.white))),
        ),
      ),   */
          // 1) text-button practice
          /*TextButton(
        child: Text('Click here ...',),
        onPressed: () {
          print('Text Button Tapped(short)');
        },
        onLongPress:() {
          print('Text Button Tapped(long)');
        }, */
          // 2) elevated-button
          /*ElevatedButton(
        child: Text('Elevated Button'),
        onPressed: () {
          print('Elevated Button Pressed(short)'); 
        },
        onLongPress: () {
          print('Elevated Button Pressed(long)');
        },
      ) */
          // 3) Outline-Button
          /*OutlinedButton(
      child: Text('Outlined Button'),
      onPressed: () {
        print('Outline button pressed(short)');
      },
      onLongPress: () {
        print('Outline button pressed(long)');
      }, 
     )  */
          //Inserting Image
          /*Center(
     child : Container(
          width: 200,
          height: 200,

        child: Image.asset('assets/images/flutter_icon.png')),
    ) */
          //  SizedBox(
          //   height: 500,  //row
          //   width: 500,  //col
          //  child: Column(
          //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   // crossAxisAlignment: CrossAxisAlignment.start,
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   // crossAxisAlignment: CrossAxisAlignment.end,
          //   children:
          //    <Widget>[
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //       Text('R1', style: TextStyle(fontSize: 25),),
          //       Text('R2', style: TextStyle(fontSize: 25),),
          //       Text('R3', style: TextStyle(fontSize: 25),),
          //       Text('R4', style: TextStyle(fontSize: 25),),
          //     ],
          //     ),
          //     Text('C1', style: TextStyle(fontSize: 25)),
          //     Text('C2', style: TextStyle(fontSize: 25)),
          //     Text('C3', style: TextStyle(fontSize: 25)),
          //     Text('C4', style: TextStyle(fontSize: 25)),
          //     Text('C5', style: TextStyle(fontSize: 25)),
          //     ElevatedButton(onPressed: (){
          //     },child: Text('Click'),
          //     )
          //   ],
          //  )
          // ),



          // InkWell
          /* Center(
            child: InkWell(
              onTap: () {
                print('Tapped on Container(single)');
              },

              onLongPress: () {
                print('Tapped on Container(long)');
              },

              onDoubleTap: () {
                print('Tapped on Container(double)');
              },

              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      print('Text Widget Tapped!');
                    },
                    child: Text('Click on Text', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),), 
                  ),
                ),
              ),
            ),
          ),  */



          /*Scrolling-Concept:
      Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
      child: Column(
        children: [
          Padding( 
            padding: const EdgeInsets.all(8.0),

            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [  
                  Container( 
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200, 
                    color: Colors.cyanAccent,
                  ),
                  
                  Container( 
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200, 
                    color: Colors.red,
                  ),
                  
                  Container( 
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200, 
                    color: Colors.pinkAccent,
                  ),
                  
                  Container( 
                    margin: EdgeInsets.only(right: 11),
                    height: 200,
                    width: 200, 
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
         
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 200,
            // width: 200,
            color: Colors.red,
          ),
          
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 400,
            // width: 200,
            color: Colors.blue,
          ),
          
          Container( 
            margin: EdgeInsets.only(bottom: 11),
            height: 400,
            // width: 200,
            color: Colors.green,
          ),
          
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 400,
            // width: 200,
            color: Colors.grey,
          )
        ],  
      )
      )
      ) */
          //List-View
          /*ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                arrNames[index],
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              );
            },
            itemCount: arrNames.length,
            // reverse: true,
            // itemExtent: 100,
            separatorBuilder: (context, index) {
              return Divider(height: 10, thickness: 5,);
            },
          ),  */
          //Decorating container
          /*Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.orange.shade500,
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              // color: Colors.blueGrey.shade500, //well not be use if decoration class using
             
              decoration: BoxDecoration(
              color: Colors.blueGrey.shade500,
              // borderRadius: BorderRadius.circular(75),
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
              borderRadius: BorderRadius.all(Radius.circular(21)),
             
             
              border: Border.all(
                width: 10,
                color: Colors.black,
              ),

              boxShadow: [
                BoxShadow(
                  blurRadius: 51,
                  color: Colors.red,
                  spreadRadius: 10,
                )
              ],

              // shape: BoxShape.rectangle,
              // shape: BoxShape.circle,

              ),
            ),
          )
        )
        */
          // Expended-Widget
          /* Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(  
                width: 50, height: 100,
                color: Colors.amber,
              ),
            ),

            Expanded(
              flex: 3,
              child: Container(
                width: 50, height: 100,
                color: Colors.blue,
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                width: 50, height: 100,
                color: Colors.grey,
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
              width: 50, height: 100, 
              color: Colors.greenAccent,
              ),
            )
          ],
        )
        */
          //Margin & Padding
          // Padding(
          //   // padding: const EdgeInsets.only(top: 50, left: 50),
          //   padding: const EdgeInsets.all(8),
          //   child: Text('Hello World!', style: TextStyle(fontSize: 25)),
          // ),
          // Container(
          //   color: Colors.purpleAccent,
          //   margin: EdgeInsets.all(50),
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 50),
          //     child: Text('Hello World', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.yellow), ),
          //   ),
          // ),
          
          
          //List-View (list tile)
          /*ListView.separated(itemBuilder: (context, index) {
              return ListTile(
                leading: Text('${index+1}'),
                title: Text(arrNames[index]),
                subtitle: Text('Number'),
                trailing: Icon(Icons.add),
              );

              return Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(children: [
                        Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(arrNames[index], style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                ],  
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: arrNames.length,
          ),
              */


            Center(
              child: CircleAvatar(
                radius: 100,
                // minRadius: 25,
                // maxRadius: 150,
                // backgroundColor: Colors.red,
                // backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/deyan.png'),

                child: Text('Hello TextAvator', style: TextStyle(color: Colors.black, fontSize: 21))
              ),
            ) 

    );
  }
} //Dashboard
