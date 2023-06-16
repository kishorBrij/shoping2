import 'package:flutter/material.dart';
import 'package:shoping2/modeldata/product_data.dart';
import 'package:shoping2/utils/image.dart';

import '../../../utils/color.dart';
import '../../screen/drawe_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {



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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15,top: 10),
              child: SizedBox(
                height: 30,
                child:Text('Engage',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
            ),
            ListTile(
              leading: Image.asset(AppImage.categories1,height: 70,width: 70,),
              title: const Text('Tribe Membership',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              trailing: Text('JOIN Now',style: TextStyle(color:AppColor.secondery,fontSize: 15,fontWeight: FontWeight.bold),),
              
            ),
            const Divider(),
            ListTile(
              leading: Image.asset(AppImage.referAndEarn,height: 70,width: 70,),
              title: const Text('Refer And Earn',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            const Divider(),
            ListTile(
              leading: Image.asset(AppImage.categories3,height: 70,width: 70,),
              title: const Text('Customise your own T-Shirt',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            const Divider(),
            ListTile(
              leading: Image.asset(AppImage.categories4,height: 70,width: 70,),
              title: const Text('Vote For Design',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            const Divider(),

            const Padding(
              padding: EdgeInsets.only(left: 15,top: 10),
              child: SizedBox(
                height: 30,
                child:Text('Popular Curation',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
            ),

            GridView.builder(
              itemCount: menTopWearData.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: .9,

              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(

                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        color: AppColor.grey.withOpacity(.1),
                        borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: double.infinity,
                            height:145,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                                child: Image.asset(menTopWearData[index].image,fit: BoxFit.cover,))),
                        const SizedBox(height: 7,),
                        Text(menTopWearData[index].name,style: TextStyle(color: AppColor.textBlack,fontWeight:FontWeight.w600,fontSize:13),textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
