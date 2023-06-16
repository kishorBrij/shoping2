import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shoping2/modeldata/home_model_data.dart';
import 'package:shoping2/ui/widget/category/tshirt_catageory.dart';
import 'package:shoping2/ui/widget/clock_page.dart';
import 'package:shoping2/utils/color.dart';
import 'package:shoping2/utils/constanst.dart';
import 'package:shoping2/utils/image.dart';
import '../../screen/drawe_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          children: [
            SizedBox(
              height: 132,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            imageCategories[index].image,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageCategories[index].title,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImage.banner1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 215,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(10),
                itemCount: imageCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    margin: const EdgeInsets.only(left: 7),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imageCategories[index].image,
                            height: 170,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          imageCategories[index].title,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 180,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ImageSlideshow(
                width: double.infinity,
                height: 200,
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
                      AppImage.banner1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Image.asset(
                    AppImage.banner2,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImage.banner3,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    AppImage.banner4,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  AppImage.discountBanner,
                  fit: BoxFit.cover,
                ),
              ),
            ),

           SizedBox(
             width: AppConstant.width(context) * 0.9,
             height: AppConstant.width(context)*0.15,

             child: const Padding(
               padding: EdgeInsets.only(top: 19,left: 10),
               child: Text('Design of the week',
               style: TextStyle(fontSize: 20,),
               ),
             ),
           ),

           Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10)),
                  height: 200,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: (){
                              // Get.to(const TshirtCategory());
                            },
                            child: Container(
                              width: AppConstant.width(context) * 0.4,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                      image: AssetImage(
                                AppImage.designOfTheWeek,
                              ))),
                            ),
                          ),
                          Positioned(
                              bottom: 15,
                              right:-2,
                              child: Container(
                                  color: Colors.white, child: const Text("Shop Mens"))),
                        ],
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              width: AppConstant.width(context) * 0.4,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                      image: AssetImage(
                                AppImage.designOfTheWeek1,
                              ))),
                            ),
                          ),
                          Positioned(
                              bottom: 15,
                              left: 10,
                              child: Container(
                                  color: Colors.white, child: const Text("Shop Women's"))),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 80,
                    left: 130,
                    child: Container(
                        color: Colors.black87,
                        child: const Text("Special Launch Price",
                        style: TextStyle(color: Colors.white),
                        ))),
              ],
            ),
            SizedBox(
              height: 20,
              child: Text('Design Expire in',style: TextStyle(fontSize: 15,color: AppColor.grey),),
            ),

            const SizedBox(
                height: 40,
                child:  CountDownPage(title: "counter")),

          ],
        ),
      ),
    );
  }
}
