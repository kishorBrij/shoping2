import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping2/ui/widget/profile/login_with_email.dart';
import 'package:shoping2/ui/screen/navigator_page.dart';
import 'package:shoping2/ui/widget/profile/profile_page_detail.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/constanst.dart';
import 'package:shoping2/utils/image.dart';

import '../../screen/drawe_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: const Text(
            'Log In / Sign Up',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppImage.loginImage),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Mobile No',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){

                  // Get.to(const NavigationPage( page: 3,));

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const NavigationPage(page: 3,isLoggedIn: true)));

                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: AppConstant.height(context) * 0.07,
                  decoration: BoxDecoration(
                      color: Colors.teal, borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Get.to(const EmailLogin());
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10)),
                  child:Row(
                    children: [
                      const Icon(Icons.email_outlined),
                      const SizedBox(width: 15,),
                      Text(
                        "CONTINUE WITH EMAIL",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColor.grey),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(10)),
                child:Row(
                  children: [
                    const Icon(Icons.facebook,color: Colors.blue,),
                    const SizedBox(width: 15,),
                    Text(
                      "FaceBook",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColor.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
