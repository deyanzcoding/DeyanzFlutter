import 'package:flutter/material.dart';
import 'package:building_ui_and_navigation/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two' ;
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text('Second Screen')),
      body: Center(
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(
                 itemCount: 50,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSR-dez27VzWPTKhNi5kQf-aNDxuBo1LQ1-Q&s'),
                      ),
                      title: Text('Deyan Ahmad'),
                      onTap: () {
                        Navigator.pushNamed(context, ScreenTwo.id);
                      },
                    );
                  }
              ),
            )
          ],
        ),

      ),
    );
  }
}
