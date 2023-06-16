import 'package:flutter/material.dart';
import 'package:shoping2/utils/image.dart';

import '../../../utils/color.dart';
import '../../screen/drawe_page.dart';
import 'male_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: const DrawerPage(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.secondery,
          title: Image.asset(
            AppImage.appBarImage,
            height: 70,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search_outlined,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_none,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_outline,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_box,
                size: 25,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Card(
              elevation: 1,
              child: TabBar(
                indicatorColor: AppColor.secondery,
                controller: tabController,
                isScrollable: true,
                unselectedLabelColor: AppColor.grey,
                labelColor: AppColor.textBlack,
                labelStyle: TextStyle(
                    color: AppColor.textBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                unselectedLabelStyle: TextStyle(
                    color: AppColor.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                tabs: const [
                  Tab(
                    text: "Men",
                  ),
                  Tab(
                    text: "Women",
                  ),
                  Tab(
                    text: "Accessories",
                  ),
                  Tab(
                    text: "Teens",
                  )
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: const [
                MenPage(),
                MenPage(),
                MenPage(),
                MenPage(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
