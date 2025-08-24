//whatsapp clone project
import 'package:flutter/material.dart';

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
      debugShowCheckedModeBanner: false,

      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Color,
            title: Text(
              'Whatsapp',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xff25d366),
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(child: Text('Chats')),
                Tab(child: Text('Updates')),
                Tab(child: Text('Groups')),
                Tab(child: Text('Calls')),
              ],
            ),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 15),

              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text('New community')),
                  PopupMenuItem(child: Text('Broadcast lists')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred')),
                  PopupMenuItem(child: Text('Read all')),
                  PopupMenuItem(child: Text('Settings')),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),

          body: TabBarView(
            children: [

              // [1] -- Chats
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                    backgroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
                    ),
                    title: Text('Hassnain Uni F'),
                    subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
                    trailing: Text('10:12 AM'),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/shogaib_uni_f.jpeg'),
                    ),
                    title: Text('Shogaib Uni F'),
                    subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
                    trailing: Text('07:53 AM'),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/abdullah_uni_f.jpg'),
                    ),
                    title: Text('Abdullah Uni F'),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_missed_outgoing),
                        Text(' Voice call'),
                      ],
                    ),
                    trailing: Text('07:49 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/bilal_uni_f.jpg'),
                    ),
                    title: Text('Bilal Uni F'),
                    subtitle: Text('Da ho Hassnain de sam 😂'),
                    trailing: Text('07:22 AM'),
                  ),
                ],
              ),

              Text('Updates'),
              Text('Communities'),



              //[4] -- Calls
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 5),
                        child: Text('Favorites', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),),
                      ),
                      Container(
                        height: 20,
                        width: 50,

                        margin: EdgeInsets.only(left: 210, top: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50),

                        ),
                        child: Center(child: Text('More', style: TextStyle(fontSize: 13),)),
                      )
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/hassnain_uni_f.jpeg'),
                    ),
                    title: Text('Hassnain Uni F'),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_made_outlined, color: Color(0xff25d366),),
                        Text(' August 20, 1:53 PM'),
                      ],
                    ),
                    trailing: Icon(Icons.call_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
