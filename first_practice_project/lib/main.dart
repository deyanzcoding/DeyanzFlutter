import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
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

    );
  }
}









//Shared Preference Practice
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   var nameController = TextEditingController();
//   static const String KEYNAME = 'name';
//   var nameValue = "No value saved!";
//
//   //second_video practice
//   String myName = '';
//   late int age = 20;
//
//   // intitState
//   @override
//   void initState()  {
//     // TODO: implement initState
//     super.initState();
//     getValue();
//
//     isLogin();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   label: Text('Name'),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                 ),
//               ),
//             ),
//
//             ElevatedButton(
//               onPressed: () async {
//                 var name = nameController.text.toString();
//
//                 var prefs = await SharedPreferences.getInstance();
//                 prefs.setString(KEYNAME, nameController.text.toString());
//               },
//               child: Text('Save details'),
//
//             ),
//             SizedBox(height: 11),
//
//             Text(nameValue),
//
//             //second_video practice
//             Text(myName.toString()),
//             Text(age.toString()),
//
//           ],
//         ),
//
//
//         //second_video practice
//         floatingActionButton: FloatingActionButton(
//           onPressed: () async {
//             SharedPreferences sp = await SharedPreferences.getInstance();
//
//             sp.remove('name');
//             myName = sp.getString('DeyanAhmad');
//
//             // setting key with value.
//             sp.setString('name', 'DeyanAhmad');
//             sp.setInt('rollNo', 12);
//             sp.setDouble('gpa', 3.41);
//             sp.setBool('isGraduate', false);
//
//             //printing in terminal
//             print(sp.getString('name'));
//             print(sp.getInt('rollNo'));
//             print(sp.getDouble('gpa'));
//             print(sp.getBool('isGraduate'));
//
//             myName = sp.getString('name') ?? '';
//
//             setState(() {
//             });
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
//
//   void getValue() async {
//     var prefs = await SharedPreferences.getInstance();
//
//     var getName = prefs.getString(KEYNAME);
//     nameValue = getName ?? "No Value Saved!!";
//
//     setState(() {
//       isLogin();
//     });
//   }
//
//   void isLogin() async {
//     SharedPreferences sp = await SharedPreferences.getInstance();
//     myName = sp.getString('name') ?? '';
//     age = sp.getInt('age') ?? 0;
//     setState(() {
//
//     });
//   }
// }
