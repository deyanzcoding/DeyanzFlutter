import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/utils/routes_names.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
  // static const String id = 'screen_five';
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Five'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('onLongPress goto home screen'),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onLongPress: () {
                Navigator.pushNamed(context, RouteName.homeScreen);

                //Navigation through id
                // Navigator.pushNamed(context, HomeScreen.id);

                // Navigator.push(context,
                //   MaterialPageRoute(builder: (context) => HomeScreen())
                // );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(Icons.home), Text(' Goto Home')],),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
