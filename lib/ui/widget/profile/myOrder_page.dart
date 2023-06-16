import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoping2/ui/screen/navigator_page.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/constanst.dart';
import 'package:shoping2/utils/image.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
          iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.textWhite,
        title: const Text('My Order',style: TextStyle(color: Colors.black87,fontSize: 17),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_outlined,
              size: 25,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none,
              size: 25,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box,
              size: 25,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:40,left: 30),
            child: SizedBox(
              height: 20,
              child: Text('Sadly, you have not placed and orders till now .',
              style: TextStyle(color: Colors.grey[800]),
              ),
            ),
          ),

          SizedBox(height: 50,),

          Container(
            width: AppConstant.width(context) * 0.6,

            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10)),
            height: 200,

            child: Stack(
              children: [
                Container(
                  // width: AppConstant.width(context) * 0.2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            AppImage.shopingBag,
                          ))),
                ),
              ],
            ),
          ),
          const SizedBox(height: 55,),
          InkWell(
            onTap: (){
              Get.to(const NavigationPage(page: 0));
            },
            child: Container(
              alignment: Alignment.center,
              height:AppConstant.height(context)*0.045,
              width:AppConstant.width(context)*0.45,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal.withOpacity(0.5))
              ),
              child:  Text('Continue Shopping',style: TextStyle(color:Colors.teal.withOpacity(0.5)),),
            ),
          ),

        ],
      ),
    );
  }
}
