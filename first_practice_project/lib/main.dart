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
  var nameController = TextEditingController();
  static const String KEYNAME = 'name';
  var nameValue = "No value saved!";

  // intitState
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: nameController,
               decoration: InputDecoration(
                 label: Text('Name'),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                 )
               ),
              ),
            ),

            ElevatedButton(onPressed: () async {
            var name = nameController.text.toString();

            var prefs = await SharedPreferences.getInstance();
            prefs.setString(KEYNAME, nameController.text.toString());
            }, child: Text('Save details')),
            SizedBox(height: 11,),

            Text(nameValue),

          ],
        ),





      )
    );
  }
void getValue() async {
  var prefs = await SharedPreferences.getInstance();

  var getName = prefs.getString(KEYNAME);
  nameValue = getName ?? "No Value Saved!";

  setState(() {

  });
}
}

