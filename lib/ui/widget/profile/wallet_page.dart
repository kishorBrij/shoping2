import 'package:flutter/material.dart';
import 'package:shoping2/utils/color.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.textWhite,
        title: const Text('My Wallet',style: TextStyle(color: Colors.black87,fontSize: 16),),
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
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 50,top: 30),
            child: SizedBox(
              height: 15,
              child: Text('Oh no! Looks Like your wallet is empty',
              style: TextStyle(color: Colors.grey),),
            ),
          )
        ],
      ),
    );
  }
}
