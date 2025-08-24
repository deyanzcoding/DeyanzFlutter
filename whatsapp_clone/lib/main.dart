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
            bottomOpacity: 0.7,
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 0),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text('Chats', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, ),),
                  ),
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

              // [2] -- Updates
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text('Status', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, ),),
                  ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 10, left: 8),
                       child: Container(
                         height: 160,
                         width: 90,
                         decoration: BoxDecoration(
                           color: Colors.grey.shade300,
                           border: Border.all(width: 1.5, color: Colors.grey.shade400),
                           borderRadius: BorderRadius.circular(20),
                         ),

                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10, left: 8),
                       child: Container(
                         height: 160,
                         width: 90,
                         decoration: BoxDecoration(
                           color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(20),
                         ),

                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 10, left: 8),
                       child: Container(
                         height: 160,
                         width: 90,
                         decoration: BoxDecoration(
                           color: Colors.grey.shade300,
                           borderRadius: BorderRadius.circular(20),
                         ),

                       ),
                     ),
                   ],
                 ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text('Channels', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                        Padding(
                          padding: const EdgeInsets.only(left: 160),
                          child: Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(child: Text('Explore', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/bbc.png'),
                        ),
                        title: Text('BBC News Urdu'),
                        subtitle: Text('محسن نقوی کا یہ بیان ایک ایسے وقت'),
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text('Yesterday'),
                        ),
                      ),

                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/whatsapp.png'),
                        ),
                        title: Text('Whatsapp'),
                        subtitle: Text('Appstrology: Virgo (23 August-22...'),
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text('Yesterday'),
                        ),
                      ),

                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/flutter_craft.png'),
                        ),
                        title: Text('Flutter Craft'),
                        subtitle: Text('Hey everyone, I\'m Asad Khan, manag...'),
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text('12/8/2025'),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/feelingsad.png', ),
                        ),
                        title: Text('Feeling Sad'),
                        subtitle: Text('ہمیشہ دیر کر دیتا ہوں میں '),
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text('12/8/2025'),
                        ),
                      ),
                    ],
                  ),

                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text('Communities', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, ),),
                  ),

                ],
              ),



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
