import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';


void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp", //app title

      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(fontSize: 11),
        ),
      ),
      home: DashBoardScreen(),
    );
  }
}

// for making any page for home page
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.orange,
      Colors.green,
      Colors.grey,
      Colors.purple,
    ];

    return Scaffold(
      // /Scaffold or MaterialApp
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        title: Text('My Dashboard'), //app bar title
      ),

      body:
          // GridView.count(crossAxisCount: 3,
          // children: [
          //   Container(color: Colors.amber,),
          //   Container(color: Colors.black,),
          //   Container(color: Colors.purple,),
          //   Container(color: Colors.orange,),
          //   Container(color: Colors.blue,),
          //   Container(color: Colors.green,),
          //   Container(color: Colors.brown,),
          //   ],)
          //grid-view extend
          // GridView.extent(maxCrossAxisExtent: 50,
          //   crossAxisSpacing: 11,
          //   mainAxisSpacing: 11,
          //   children: [
          //     Container(color: Colors.red,),
          //     Container(color: Colors.blue,),
          //     Container(color: Colors.orange,),
          //     Container(color: Colors.red,),
          //     Container(color: Colors.orange,),
          //     Container(color: Colors.red,),
          //     Container(color: Colors.orange,),
          //     Container(color: Colors.red,),
          //   ],
          // )
          //grid-view builder
          // GridView.builder(
          //   itemBuilder: (context, index) {
          //     return Container(color: arrColors[index]);
          //   },
          //   itemCount: arrColors.length,
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 100,
          //     crossAxisSpacing: 11,
          //     mainAxisSpacing: 11,
          //   ),
          // ),
          //  Wrap(
          //   direction: Axis.vertical,
          //   spacing: 11,
          //   runSpacing: 22,
          //   alignment: WrapAlignment.center,
          //    children: [
          //        Text('Wrap Widget:', style: TextStyle(fontSize: 20, ),),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.amber,
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: const Color.fromARGB(255, 187, 137, 61),
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.blue,
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.green,
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.black,
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.amber,
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.blue,
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.green,
          //      ),
          //      Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.black,
          //      ),
          //    ],
          //  )
          //Size-Box
          // SizedBox(   //use for white spacing
          //   width: 200,
          //   height: 50 ,
          //   child: 
          //    ElevatedButton(onPressed: () {}, child: Text('Click')),
          // ),

          //Rich Texting
          // RichText(text: TextSpan(
          //   style: TextStyle(
          //     color: Colors.grey,
          //     fontSize: 31,
          //   ),
          //   children: <TextSpan>[
          //       TextSpan(
          //         text: 'Hello '),
          //        TextSpan(
          //         text: 'World', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.blueAccent)
          //         ),
                
          //   ]
          // ))


          // icon-widget
          // Center(
          //   child: Icon(Icons.pause,
          //   size: 100,
          //   color: Colors.green,
            
          //   ),
          // )

         
         //stack
        //  Container(
        //   width: 400,
        //   height: 200,
        //   color: Colors.blueGrey,
        //    child: Stack(
        //     children: [
        //       Positioned(
        //         width: 51,
        //         height: 51,
        //         child: Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.white,
        //         ),
        //       )
        //     ],
        //    ),
        //  )




    );
  }
}
