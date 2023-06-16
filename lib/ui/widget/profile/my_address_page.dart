import 'package:flutter/material.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/constanst.dart';

class MyAddressPage extends StatefulWidget {
  const MyAddressPage({Key? key}) : super(key: key);

  @override
  State<MyAddressPage> createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.textWhite,
        title: const Text('My Addresses',style: TextStyle(color: Colors.black87,fontSize: 16),),
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
            padding: const EdgeInsets.only(left: 35,top: 40),
            child: Container(
              height: AppConstant.height(context)*0.28,
              width: AppConstant.width(context)*0.8,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal.withOpacity(0.5))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,color: Colors.teal.withOpacity(0.5),size: 35,),
                  Text('ADD NEW ADDRESS',style: TextStyle(color: Colors.teal.withOpacity(0.5)),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
