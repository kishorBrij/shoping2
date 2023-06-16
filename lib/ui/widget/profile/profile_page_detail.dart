import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoping2/ui/screen/drawe_page.dart';
import 'package:shoping2/ui/screen/navigator_page.dart';
import 'package:shoping2/ui/widget/profile/myOrder_page.dart';
import 'package:shoping2/ui/widget/profile/myPayment_page.dart';
import 'package:shoping2/ui/widget/profile/my_address_page.dart';
import 'package:shoping2/ui/widget/profile/my_profile_page.dart';
import 'package:shoping2/ui/widget/profile/refer_earn.dart';
import 'package:shoping2/ui/widget/profile/wallet_page.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/constanst.dart';
import 'package:shoping2/utils/image.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        elevation: 0,
        // leadingWidth: 11,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              const Divider(thickness: 1,),
              ListTile(
                onTap: (){
                  Get.to(const MyOrderPage());
                },
                title: Text('My Orders',style: TextStyle(color: AppColor.textBlack,fontSize:18 ),),
                subtitle: const Text('View, modify and track orders'),
              ),
              const Divider(thickness: 1,),
              ListTile(
                onTap: (){
                  Get.to(const MyPaymentPage());
                },
                title: Text('My Payments',style: TextStyle(color: AppColor.textBlack,fontSize:18 ),),
                subtitle: const Text('view and modify payment methods'),
              ),
              const Divider(thickness: 1,),
              ListTile(
                onTap: (){
                  Get.to(const WalletPage() );
                },
                title: Text('My Wallet',style: TextStyle(color: AppColor.textBlack,fontSize:18 ),),
                subtitle: const Text('Wallet History and redeemed gift Cards'),
              ),
              const Divider(thickness: 1,),
              ListTile(
                onTap: (){
                  Get.to(const MyAddressPage());
                },
                title: Text('My Addresses',style: TextStyle(color: AppColor.textBlack,fontSize:18 ),),
                subtitle: const Text('Edit,add or remove addresses'),
              ),
              const Divider(thickness: 1,),
              ListTile(
                onTap: (){
                  Get.to(const MyProfilePage());
                },
                title: Text('My Profile',style: TextStyle(color: AppColor.textBlack,fontSize:18 ),),
                subtitle: const Text('Edit personal info, change password'),
              ),
              const Divider(thickness: 1,),
              ListTile(
                onTap: (){
                  Get.to(const ReferAndEarn());
                },
                title: Text('Refer and Earn',style: TextStyle(color: AppColor.textBlack,fontSize:18 ),),
                subtitle: const Text('Invite your friends and earn reward'),
              ),
              const Divider(thickness: 1,),
              const SizedBox(height: 25,),
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
        ),
      ),
    );
  }
}
