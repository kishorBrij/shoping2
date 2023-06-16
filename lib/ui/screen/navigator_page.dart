import 'package:flutter/material.dart';
import 'package:shoping2/ui/widget/profile/profile_page.dart';
import 'package:shoping2/ui/widget/profile/profile_page_detail.dart';

import '../../utils/color.dart';
import '../widget/category/categories_page.dart';
import '../widget/explore/explore_page.dart';
import '../widget/home/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key, required this.page, this.isLoggedIn})
      : super(key: key);

  final int page;
  final bool? isLoggedIn;

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = [
      const HomePage(),
      const CategoriesPage(),
      const ExplorePage(),
      widget.isLoggedIn != null && widget.isLoggedIn == true
          ? const ProfileDetail()
          : const ProfilePage()
    ];

    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColor.textWhite,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColor.secondery,
          unselectedItemColor: AppColor.grey,
          iconSize: 25,
          unselectedLabelStyle: TextStyle(color: AppColor.grey, fontSize: 14),
          selectedLabelStyle:
              TextStyle(color: AppColor.textBlack, fontSize: 14),
          onTap: _onItemTapped,
          elevation: 0),
    );
  }
}
