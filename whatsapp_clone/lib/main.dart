//Whatsapp Clone project

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
        length: 4,
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
                Tab(child: Column(
                  children: [
                    Icon(Icons.chat,),
                    Text('Chats'),
                  ],
                )),
                Tab(child: Column(
                  children: [
                    Icon(Icons.access_time),
                    Text('Updates'),
                  ],
                )),
                Tab(child: Column(
                  children: [
                    Icon(Icons.people_alt_outlined),
                    Text('Community'),
                  ],
                )),
                Tab(child: Column(
                  children: [
                    Icon(Icons.call_outlined),
                    Text('Calls'),
                  ],
                )),
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
                    child: Text(
                      'Chats',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/hassnain_uni_f.jpeg',
                      ),
                    ),
                    title: Text('Hassnain Uni F'),
                    subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
                    trailing: Text('10:12 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/shogaib_uni_f.jpeg',
                      ),
                    ),
                    title: Text('Shogaib Uni F'),
                    subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
                    trailing: Text('07:53 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/deyan.jpg'),
                    ),
                    title: Text(
                      '(You)',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Explain container widg...'),
                    trailing: Text('07:49 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/abdullah_uni_f.jpg',
                      ),
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
                      backgroundImage: AssetImage(
                        'assets/images/bilal_uni_f.jpg',
                      ),
                    ),
                    title: Text('Bilal Uni F'),
                    subtitle: Text('Da ho Hassnain de sam 😂'),
                    trailing: Text('07:22 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/hassnain_uni_f.jpeg',
                      ),
                    ),
                    title: Text('Hassnain Uni F'),
                    subtitle: Text('You reacted ❤️ to "🎙️ 0:36"'),
                    trailing: Text('10:12 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/shogaib_uni_f.jpeg',
                      ),
                    ),
                    title: Text('Shogaib Uni F'),
                    subtitle: Text('Shogaib reacted 😂 to "Sta pa sh..."'),
                    trailing: Text('07:53 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/bilal_uni_f.jpg',
                      ),
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
                    child: Text(
                      'Status',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  //[ status boxes ]
                  Row(
                    children: [
                      // [ first status box ]
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 8),
                        child: Container(
                          height: 160,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border: Border.all(
                              width: 1.5,
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                    'assets/images/deyan.jpg',
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Text(
                                    'Add\nstatus',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // [ second status box ]
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 8),
                        child: Container(
                          height: 160,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/deyan_hassnain.jpg',
                              ),
                            ),
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 3,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 20,
                                    foregroundImage: AssetImage(
                                      'assets/images/hassnain_uni_f.jpeg',
                                    ),
                                    backgroundColor: Color(0xff30D237FF),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 70,
                                    right: 17,
                                  ),
                                  child: Text(
                                    'Hassnain',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 8),
                        child: Container(
                          height: 160,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/deyan_shogaib.jpg',
                              ),
                            ),
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 35),
                                  child: CircleAvatar(
                                    radius: 20,
                                    foregroundImage: AssetImage(
                                      'assets/images/shogaib_uni_f.jpeg',
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 70),
                                  child: Text(
                                    'Shogaib',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Channels',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160),
                          child: Container(
                            height: 25,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Explore',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
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
                          backgroundImage: AssetImage(
                            'assets/images/whatsapp.png',
                          ),
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
                          backgroundImage: AssetImage(
                            'assets/images/flutter_craft.png',
                          ),
                        ),
                        title: Text('Flutter Craft'),
                        subtitle: Text(
                          'Hey everyone, I\'m Asad Khan, manag...',
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text('12/8/2025'),
                        ),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            'assets/images/feelingsad.png',
                          ),
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

              // [3] -- Communities
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text(
                      'Communities',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // [New Community]
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/community.png'),
                          height: 80,
                          width: 80,
                        ),
                        Text(
                          'New community',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  // [1st community]
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
                    ),
                    //[ --community name-- ]
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image(
                              image: AssetImage('assets/images/awkum.jpeg'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'Awkum updates',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey.shade300),

                  // [ --Announcement-- ]
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/announcement.png',
                      ),
                    ),
                    title: Text('Announcements'),
                    subtitle: Text('~Ashar Ahmad replied to an...'),
                    trailing: Text('5:21 AM'),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/view.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(height: 2, color: Colors.grey.shade300),
                  SizedBox(height: 20),

                  // [2nd community]
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 8),
                      ],
                    ),
                    //[ --community name-- ]
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image(
                              image: AssetImage('assets/images/gdg.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'GDG Live Pakistan',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 1, color: Colors.grey.shade300),

                  // [ --Announcement-- ]
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/announcement.png',
                      ),
                    ),
                    title: Text('Announcements'),
                    subtitle: Text('~maqsood Ali joined fro..'),
                    trailing: Text('8/12/25'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/gdg_live.png'),
                    ),
                    title: Text('DevFest Pakistan\'24'),
                    subtitle: Text('+92 348 8888888 joined fro...'),
                    trailing: Text('9/12/25'),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/view.png')),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //[4] -- Calls
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //favrite & more
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 5),
                        child: Text(
                          'Favorites',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 50,

                        margin: EdgeInsets.only(left: 210, top: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text('More', style: TextStyle(fontSize: 13)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Favorite 1
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/hassnain_uni_f.jpeg',
                      ),
                    ),
                    title: Text('Hassnain Uni F'),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [
                        Icon(Icons.call_outlined, color: Colors.grey),
                        SizedBox(width: 15), // Adds spacing between icons
                        Icon(Icons.video_call, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  // Favorite 2
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/shogaib_uni_f.jpeg',
                      ),
                    ),
                    title: Text('Shogaib Uni F'),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [
                        Icon(Icons.call_outlined, color: Colors.grey),
                        SizedBox(width: 15), // Adds spacing between icons
                        Icon(Icons.video_call, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  //Favorite 3
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/bilal_uni_f.jpg',
                      ),
                    ),
                    title: Text('Bilal Uni F'),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [
                        Icon(Icons.call_outlined, color: Colors.grey),
                        SizedBox(width: 15), // Adds spacing between icons
                        Icon(Icons.video_call, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  //Favorite 4
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/abdullah_uni_f.jpg',
                      ),
                    ),
                    title: Text('Abduallah Uni F'),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [
                        Icon(Icons.call_outlined, color: Colors.grey),
                        SizedBox(width: 15), // Adds spacing between icons
                        Icon(Icons.video_call, color: Colors.grey),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  // recent
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 4),
                        child: Text(
                          'Recent',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Recent 1
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/hassnain_uni_f.jpeg',
                      ),
                    ),
                    title: Text('Hassnain Uni F'),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_received_outlined,
                          color: Color(0xff25d366),
                        ),
                        Text(' August 20, 1:53 PM'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [Icon(Icons.call_outlined, color: Colors.grey)],
                    ),
                  ),

                  // Recent 2
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/shogaib_uni_f.jpeg',
                      ),
                    ),
                    title: Text(
                      'Shogaib Uni F',
                      style: TextStyle(color: Colors.red),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received_outlined, color: Colors.red),
                        Text(' August 13, 11:59 PM'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [
                        Icon(Icons.call_outlined, color: Colors.grey),
                      ],
                    ),
                  ),

                  //Favorite 3
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/bilal_uni_f.jpg',
                      ),
                    ),
                    title: Text('Bilal Uni F'),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_made_outlined,
                          color: Color(0xff25d366),
                        ),
                        Text(' Yesterday, 1:53 PM'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [
                        Icon(Icons.call_outlined, color: Colors.grey),
                      ],
                    ),
                  ),

                  //Favorite 4
                  ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/abdullah_uni_f.jpg',
                      ),
                    ),
                    title: Text('Abduallah Uni F'),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_made_outlined,
                          color: Color(0xff25d366),
                        ),
                        Text(' August 14, 1:53 PM'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Ensures the Row takes only the space needed
                      children: [
                        Icon(Icons.call_outlined, color: Colors.grey),
                      ],
                    ),
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
