import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.red.shade200,
          title: Center(
            child: Text(
              'Ten Importand Widgets',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),

          body:


      ),
    );
  }
}


//[1, 2] --Container & Expanded widget.
//  Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Center(
//       child: Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//           color: Colors.orange,
//           border: Border.all(width: 2, color: Colors.black),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(40),
//             bottomRight: Radius.circular(40),
//             topRight: Radius.circular(10),
//             bottomLeft: Radius.circular(10),
//           ),
//         ),
//         child: Center(
//           child: Text(
//             'Container 1\n.only',
//             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
//           ),
//         ),
//       ),
//     ),
//
//     SizedBox(width: 10),
//
//     Container(
//       width: 120,
//       height: 120,
//       alignment: Alignment.bottomLeft,
//       transform: Matrix4.rotationZ(0.1),
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.all(10),
//
//       decoration: BoxDecoration(
//         color: Colors.orange,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [BoxShadow(color: Colors.orange, blurRadius: 100)],
//         image: DecorationImage(
//           image: NetworkImage(
//             'https://www.peanutsquare.com/wp-content/uploads/2023/06/Advanced-Flutter-Widgets-Exploring-Custom-and-Composite-Widgets-jpg.webp',
//           ),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Text(
//         'Container 2\n.circular',
//         style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
//       ),
//     ),
//
//     SizedBox(width: 10),
//
//     Center(
//       child: Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//           color: Colors.orange,
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(40),
//             topLeft: Radius.circular(10),
//             bottomRight: Radius.circular(10),
//             bottomLeft: Radius.circular(40),
//           ),
//           border: Border.all(color: Colors.black, width: 2),
//         ),
//         child: Center(
//           child: Text(
//             'Container 1\nborder.all',
//             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
//           ),
//         ),
//       ),
//     ),
//
//     SizedBox(height: 20),
//
//     Container(
//       width: 150,
//       height: 60,
//       decoration: BoxDecoration(
//         color: Colors.red,
//         borderRadius: BorderRadius.circular(15),
//         border: Border.all(color: Colors.black, width: 3),
//         boxShadow: [BoxShadow(color: Colors.green, blurRadius: 30)],
//       ),
//       child: Center(
//         child: Text('Login', style: TextStyle(fontSize: 20)),
//       ),
//     ),
//
//     Expanded(
//         flex: 1,
//         child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [Colors.green, Colors.yellow], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           shape: BoxShape.rectangle,
//         ),
//         child: Text('Expanded Widget')
//     )
//                  ),
//
//     Expanded(
//       flex: 2,
//       child: Container(
//           color: Colors.green,
//           child: Text('Not-Expanded Widget')
//       ),
//     ),
//   ],
// ),


// [3] --Expanded Widget
// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// SizedBox(
// child: Stack(
// alignment: Alignment.center,
//
// children: [
// Container(
// height: 150,
// width: 150,
// color: Colors.red,
// ),
// Positioned(
// bottom: 0,
// right: 30,
// child: Container(
// height: 70,
// width: 70,
// color: Colors.green,
// ),
// ),
//
// Container(
// height: 30,
// width: 30,
// color: Colors.blue,
// ),
// Positioned(
// top: 0,
// left: 50,
//
// child: Text('Deyan'),
// ),
// ],
// ),
// ),
//
// SizedBox(height: 25,),
//
// Stack(
// children: [
// Container(
// height: 150,
// width: 150,
// color: Colors.red,
// ),
// Container(
// height: 100,
// width: 100,
// color: Colors.orange,
// ),
// Container(
// height: 50,
// width: 50,
// color: Colors.green,
// ),
// ],
// )
// ],
// )


//[4] --Divider, VerticalDivider
// Divider(
// color: Colors.black,
// thickness: 2.5,
// ),
// SizedBox(
// height: 50,
// child: VerticalDivider(
// color: Colors.pink,
// thickness: 2.5,
//
// ),
// ),
// Divider(
// color: Colors.black,
// thickness: 2.5,
// ),


// [5] --CircleAvatar
// Column(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// SizedBox(
// height: 100,    //use for column
// width: 100,     //use for row
// ),
//
//
// Center(
// child: CircleAvatar(
// radius: 100,
// backgroundColor: Colors.grey,
// foregroundColor: Colors.red,
//
// backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg'),
// // child: Icon(Icons.person),
// // child: Image(image: AssetImage('/assets/images/deyan.png'),),
// // child: Text('D', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),),
// ),
// )
// ],
// )


// [6] --RichText
// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Center(
// child: RichText(text: TextSpan(text: 'Don\'t have any account?   ',
// style: Theme.of(context).textTheme.bodyMedium,
// children: [
// TextSpan(text: 'Sign Up, ', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
// ]
// ),
// ),
// )
// ],
// )
