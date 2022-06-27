import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utility_catalog/controller/myNews_controller.dart';

import 'package:flutter_utility_catalog/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController _hController = Get.put(HomeController());
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(25, 25, 112, 1),
        title: Text("Flutter Utility Catalog"),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Widgets(),
          Widgets(),
          Widgets(),
          // orderListArea(),
        ],
        onPageChanged: (index) {
          setState(() => _hController.currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: Colors.grey[300],
        selectedIndex: _hController.currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _hController.currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('widgets'.tr),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.search),
            title: Text('search'.tr),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400,
          ),
          BottomBarItem(
            icon: Icon(Icons.format_list_bulleted),
            title: Text('myList'.tr),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400,
          ),
        ],
      ),
    );
  }
}
