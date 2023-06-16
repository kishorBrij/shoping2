import 'package:flutter/material.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/constanst.dart';
import 'package:shoping2/utils/image.dart';

class MyPaymentPage extends StatefulWidget {
  const MyPaymentPage({Key? key}) : super(key: key);

  @override
  State<MyPaymentPage> createState() => _MyPaymentPageState();
}

class _MyPaymentPageState extends State<MyPaymentPage> {

  bool selectColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.textWhite,
        title: const Text('My Payments',style: TextStyle(color: Colors.black87,fontSize: 16),),
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
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              padding: const EdgeInsets.only(top: 12,left: 20),
              height: AppConstant.height(context)*0.06,
              width: AppConstant.width(context)*1,
              color: Colors.grey.withOpacity(0.2),
              child: const Text('DEBIT & CREDIT CARD',textAlign: TextAlign.start,
              style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListTile(
              leading: Icon(Icons.credit_card_rounded,size: 30,color: Colors.grey.withOpacity(0.6),),
              title: const Text('No Debit/Credit Card saved',style: TextStyle(
                fontSize: 13,color: Colors.grey
              ),),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 12,left:20),
            height: AppConstant.height(context)*0.06,
            width: AppConstant.width(context)*1,
            color: Colors.grey.withOpacity(0.2),
            child: const Text('UPI',textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ListTile(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return StatefulBuilder(
                        builder: (BuildContext context, void Function(void Function()) setState) {
                          return AlertDialog(
                            alignment: AlignmentDirectional.bottomEnd,
                            title:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                TextFormField(
                                  cursorColor: Colors.black,
                                  onChanged: (v){

                                    setState(() {
                                      selectColor = true;
                                    });
                                  },
                                  decoration: InputDecoration(

                                      focusColor: Colors.cyan,
                                      labelText: "UPI"
                                  ),
                                ),
                                const SizedBox(
                                  child: Text('UPI Id in the format of yourname@bankname 0r yourmobile@bankname',
                                    style: TextStyle(fontSize: 11,color: Colors.grey),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                  width: AppConstant.width(context)*0.6,
                                  height: AppConstant.height(context)*0.04,
                                  decoration: BoxDecoration(
                                      color: selectColor?Colors.teal[200]:Colors.grey.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: const Center(
                                    child: Text('VERIFY',
                                      style: TextStyle(fontSize: 12,color: Colors.grey),
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          );
                        },

                      );
                    });
              },
              leading: Image.asset(AppImage.upiImage,height: 20,),
              title: const Text('Add UPI ID',style: TextStyle(
                  fontSize: 13,color: Colors.grey
              ),),
              trailing: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.teal.withOpacity(0.1),
                  foregroundColor: Colors.teal,
                  child: Icon(Icons.add,color: Colors.teal.withOpacity(0.5),)),
            ),
          ),
        ],
      ),
    );
  }
}
