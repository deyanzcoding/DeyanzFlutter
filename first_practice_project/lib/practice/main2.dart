import 'package:flutter/material.dart';

// import 'package:first_project/assets/ui_helper/text_theme.dart';
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
    return Scaffold(
      // /Scaffold or MaterialApp
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        title: Text('Dashboard'), //app bar title
      ),

      body:
          //custom Theme
          /*
          Column(
            children: [
              Text('Hello Deyan', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.amber)),
              Text('Hello Deyan', style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontStyle: FontStyle.italic)),
              Text('Hello Deyan', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontFamily: 'deyan1')),
              // Text('Hello Deyan', style: myHeading31());
            ],
    ),  */
          // card-widget usage
          /* Center(
            child: Card(
              shadowColor: Colors.green,
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hello Deyan',
                  style: Theme.of(
                    context, 
                  ).textTheme.headlineLarge!.copyWith(fontStyle: FontStyle.italic),
                ),
                
              ),
            ),
          ),
          */
          //Text-Field
          Center(child: SizedBox(
              width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21), 
                      borderSide: BorderSide(
                        color: Colors.grey,
                        ),
                    )
                  ),
                ),
              
              Container(height: 11),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(21), 
                      borderSide: BorderSide(
                        color: Colors.grey,
                        ),
                    )
                  ),
                ),
              ],
            )
            )
            ),
    );
  }
} //Dashboard
