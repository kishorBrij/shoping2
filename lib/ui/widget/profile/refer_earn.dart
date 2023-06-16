import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shoping2/modeldata/refer_model_data.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/image.dart';

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.textWhite,
        title: const Text('Refer and Earn',style: TextStyle(color: Colors.black87,fontSize: 16),),
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
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height:10 ,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset(AppImage.referAndEarn1,height: 180,width: 280,fit: BoxFit.cover,)
           ],
         ),
            const SizedBox(height:10 ,),
            const Text('Invite Your friends and earn',style: TextStyle(color: Colors.grey),),
            const Text('₹100 for every referral',style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 30,),
        DottedBorder(
          color: Colors.orangeAccent,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          padding: const EdgeInsets.all(6),
          child: const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: SizedBox(
              height: 20,
              width: 290,
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 10),
               child: Text('Tribe Member earn ₹125 for every referral',style: TextStyle(color: Colors.grey),),
             ),
            ),
          ),),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text('Invite Via',style: TextStyle(color: Colors.grey),),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: referData.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                    const EdgeInsets.only(left: 20,top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            referData[index].image,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          referData[index].title,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text('Tap to copy the code',style: TextStyle(color: Colors.grey),),
            ),
            const SizedBox(height: 20,),
            DottedBorder(
              color: Colors.teal,
              borderType: BorderType.RRect,
              radius: const Radius.circular(10),
              padding: const EdgeInsets.all(6),
              child: const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  height: 20,
                  width: 290,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 110),
                    child: Text('BRICZ154',style: TextStyle(color: Colors.grey),),
                  ),
                ),
              ),),
          ],
        ),
      ),

    );
  }
}
