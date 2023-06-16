import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/constanst.dart';
import 'package:shoping2/utils/image.dart';

import '../../../modeldata/list_data.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({Key? key}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {

  String ? selectSize;
  String ? selectSizeData;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:Container(
        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height:45,
                width:100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("WISHLIST",style: TextStyle(fontSize: 12),),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 45,
              width:180,
              decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("ADD TO BAG",style: TextStyle(fontSize: 12),),
              ),
            ),
          ],
        ),
      ),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor:Colors.grey.withOpacity(0.5),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.share,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ImageSlideshow(
                  width: double.infinity,
                  initialPage: 0,
                  indicatorColor: AppColor.secondery,
                  indicatorBackgroundColor: Colors.grey,
                  onPageChanged: (value) {
                    //  print('Page changed: $value');
                  },
                  autoPlayInterval: 10000,
                  isLoop: true,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AppImage.detialCategories,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      AppImage.detialCategories1,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      AppImage.detialCategories2,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 20,
                  child: Text("White Plane T-shirt",style: TextStyle(
                    fontSize: 18,color: AppColor.textBlack
                  ),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: SizedBox(
                  height: 20,
                  child: Text("Men's white plane T-shirt",style: TextStyle(
                      fontSize: 12,color: AppColor.grey
                  ),),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("₹ 400",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  ),

                  Text("₹ 1300",
                    style: TextStyle(fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,),),
                  SizedBox(width: 10,),
                  Text("59% off",style: TextStyle(fontSize: 20,color: Colors.green),)
                ],
              ),

              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 30,
                    width: 140,
                    color: Colors.amber[100],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Design of the week',textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 12,color: AppColor.grey),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    height: 30,
                    width: 140,
                    // color: Colors.amber[100],
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('100% Cotton',textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 12,color: AppColor.grey),
                      ),
                    ),
                  ),
                ],
              ),


              Container(
                margin: const EdgeInsets.only(left: 10, top: 15, right: 20),
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Select Size",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      "Size Guide",
                      style: TextStyle(color: Colors.teal, fontSize: 14),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: AppConstant.height(context)*0.07,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sizeList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: GestureDetector(
                            onTap: (){
                              selectSize = sizeList[index];
                              selectSizeData = sizeListData[index];
                              setState(() {

                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height:40,
                              width:40,
                              decoration: BoxDecoration(
                                color: selectSize==sizeList[index]?Colors.black:Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text(sizeList[index],textAlign: TextAlign.center,
                              style: TextStyle(color: selectSize!=sizeList[index]?Colors.black:Colors.white),),
                            ),
                          ),
                        ),

                      ],
                    );
                  },
                ),
              ),
              Container(
                margin:const EdgeInsets.symmetric(horizontal:5,vertical: 3),
                child: Text(selectSizeData??"",style: const TextStyle(
                    color: Colors.grey,fontSize:14
                ),),
              ),


            ],
          ),

        ),
      ),

    );
  }
}
