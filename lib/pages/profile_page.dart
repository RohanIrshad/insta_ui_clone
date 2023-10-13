import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:insta_ui/tabs/grid_veiw_user.dart';
import 'package:insta_ui/tabs/tags_user.dart';

import '../tabs/reels_user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final heigh = Get.height;
  final widt = Get.width;

  List<String> highlightsCover = [
    'assets/images/highlight_1.png',
    'assets/images/highlight_2.png',
    'assets/images/highlight_3.png',
    'assets/images/1.png',
    'assets/images/highlight_4.png',
  ];

  List<String> highlightsname = [
    'Flutter ❤️',
    'Github ❤️',
    'Firebase ❤️',
    'About Me',
    'New',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rohan Irshad'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 46,
                  backgroundImage: AssetImage('assets/images/story.png'),
                  child: CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage('assets/images/1.png')),
                ),
                Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '11.4K',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rohan Irshad',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Share Profile',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_add_outlined),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: const AssetImage(
                              'assets/images/highlight_cover.png'),
                          child: CircleAvatar(
                            radius: 31,
                            backgroundImage: AssetImage(
                              highlightsCover[index],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          highlightsname[index],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_on_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          FontAwesomeIcons.play,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.person_pin_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        GrideView(),
                        ReelsView(),
                        TagsView(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
