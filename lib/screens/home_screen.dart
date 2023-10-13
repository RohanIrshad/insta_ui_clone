import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_ui/pages/home_page.dart';
import 'package:insta_ui/pages/media_page.dart';
import 'package:insta_ui/pages/profile_page.dart';
import 'package:insta_ui/pages/reels_page.dart';
import 'package:insta_ui/pages/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RxInt currentPage = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(
        () => IndexedStack(
          index: currentPage.value,
          children: [
            HomePage(),
            SearchPage(),
            ReelsPage(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => IconButton(
                  onPressed: () {
                    currentPage.value = 0;
                  },
                  icon: Icon(
                    Icons.home,
                    color: currentPage.value == 0
                        ? Colors.black87
                        : Colors.black54,
                  ),
                ),
              ),
              Obx(
                () => IconButton(
                  onPressed: () {
                    currentPage.value = 1;
                  },
                  icon: Icon(
                    Icons.search_rounded,
                    color: currentPage.value == 1
                        ? Colors.black87
                        : Colors.black54,
                  ),
                ),
              ),
              Obx(
                () => IconButton(
                  onPressed: () {
                    Get.to(() => MediaPage());
                  },
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: currentPage.value == 2
                        ? Colors.black87
                        : Colors.black54,
                  ),
                ),
              ),
              Obx(
                () => IconButton(
                  onPressed: () {
                    currentPage.value = 2;
                  },
                  icon: Icon(
                    Icons.ondemand_video,
                    color: currentPage.value == 2
                        ? Colors.black87
                        : Colors.black54,
                  ),
                ),
              ),
              Obx(
                () => IconButton(
                  onPressed: () {
                    currentPage.value = 3;
                  },
                  icon: Icon(
                    Icons.person,
                    color: currentPage.value == 3
                        ? Colors.black87
                        : Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
