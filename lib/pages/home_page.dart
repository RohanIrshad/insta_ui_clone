import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
  ];
  List<String> posts = [
    'assets/images/post_1.png',
    'assets/images/post_2.png',
    'assets/images/post_3.png',
    'assets/images/post_4.png',
    'assets/images/post_5.png',
    'assets/images/post_6.png',
  ];
  List<String> name = [
    'Usaid Asif ',
    'Ali ',
    'Ahmed ',
    'Daniyal ',
    'Anas ',
    'Shehryar '
  ];
  List<String> caption = [
    'I love to develop apps in flutter',
    'Github contribution graph',
    'Favourite game',
    'Dream car',
    'New phone ',
    'Nature'
  ];
  List<String> comment = [
    'View all 158 comments',
    'View all 47 comments',
    'View all 19 comments',
    'View all 22 comments',
    'View all 39 comments',
    'View all 78 comments',
  ];

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Instagram',
          style: GoogleFonts.dancingScript(
            fontSize: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.heart,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.facebookMessenger,
            ),
          )
        ],
      ),
      body: RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      6,
                      (index) => Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 38,
                                backgroundImage:
                                    AssetImage('assets/images/story.png'),
                                child: CircleAvatar(
                                    radius: 34,
                                    backgroundImage:
                                        AssetImage(profileImage[index])),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(name[index])
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(),
                Column(
                  children: List.generate(
                      6,
                      (index) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                          AssetImage('assets/images/story.png'),
                                      child: CircleAvatar(
                                          radius: 17,
                                          backgroundImage:
                                              AssetImage(profileImage[index])),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      name[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Icon(Icons.more_vert_rounded),
                                  ],
                                ),
                              ),
                              Container(
                                height: Get.height * 0.4,
                                width: Get.width,
                                child: Image.asset(
                                  posts[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.heart),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.comment),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.paperPlane),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.whatsapp),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesomeIcons.bookmark),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Container(
                                  width: Get.width,
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(children: [
                                          TextSpan(text: 'Liked by '),
                                          TextSpan(
                                              text: 'Faizan ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15)),
                                          TextSpan(text: 'and '),
                                          TextSpan(
                                              text: 'others.',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15)),
                                        ]),
                                      ),
                                      Text.rich(
                                        TextSpan(children: [
                                          TextSpan(
                                              text: name[index] + ' ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15)),
                                          TextSpan(text: caption[index]),
                                        ]),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text.rich(TextSpan(children: [
                                        TextSpan(text: comment[index]),
                                      ])),
                                      TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Add a comment...',
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                )
              ],
            ),
          )),
    );
  }
}
