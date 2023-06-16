import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoping2/utils/image.dart';
import 'navigator_page.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280,
      child: ListView(
        children: [
          const ListTile(
            leading: Text(
              "Welcome Guest",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(const NavigationPage(
                page: 3,
              ));
            },
            child: const ListTile(
              leading: Text(
                "Login/Sign Up",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Text(
              "Men",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.cyan.withOpacity(.1),
              child: Image.asset(
                AppImage.drawer,
                // height: 70,
              ),
            ),
          ),
          ListTile(
            leading: const Text(
              "Women",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.cyan.withOpacity(.1),
              child: Image.asset(
                AppImage.drawer1,
                // height: 70,
              ),
            ),
          ),
          ListTile(
            leading: const Text(
              "Accessories",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.cyan.withOpacity(.1),
              child: Image.asset(
                AppImage.drawer2,
                // height: 70,
              ),
            ),
          ),
          ListTile(
            leading: const Text(
              "Teens",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.cyan.withOpacity(.1),
              child: Image.asset(
                AppImage.drawer3,
                // height: 70,
              ),
            ),
          ),
          ListTile(
            leading: const Text(
              "Customise Your own T-shirt",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.cyan.withOpacity(.1),
              child: Image.asset(
                AppImage.drawer4,
                // height: 70,
              ),
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Text(
              "CONTACT Us",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          const ListTile(
            leading: Text(
              "Help & Support",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Text(
              "Feedback & Suggestion",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Text(
              "Become a Seller",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Text(
              "ABOUT Us",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          const ListTile(
            leading: Text(
              "Our Story",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Text(
              "Fanbook",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Text(
              "Blog",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            leading: Text(
              "Rate The App",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
