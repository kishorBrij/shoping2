import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoping2/modeldata/tshirt_model_data.dart';
import 'package:shoping2/ui/widget/category/category_Details.dart';
import 'package:shoping2/utils/color.dart';

class TshirtCategory extends StatefulWidget {
  const TshirtCategory({Key? key}) : super(key: key);

  @override
  State<TshirtCategory> createState() => _TshirtCategoryState();
}

class _TshirtCategoryState extends State<TshirtCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: AppColor.textWhite,
        title: const Text('Tshirt Category',style: TextStyle(color: Colors.black87,fontSize: 16),),
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

      body: GridView.builder(
        itemCount: menTshirtData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 6.0,
          childAspectRatio: .9,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.to(const CategoryDetails());
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: AppColor.grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15)),
              margin: const EdgeInsets.only(left: 5),
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 145,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                          child: Image.asset(
                            menTshirtData[index].image,
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(
                    height: 7,
                  ),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Text(
                             menTshirtData[index].title,
                             style: TextStyle(
                                 color: AppColor.grey,
                                 fontWeight: FontWeight.w600,
                                 fontSize: 10),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(right: 5),
                           child: Icon( menTshirtData[index].icon,color: Colors.grey,),

                         ),
                       ],
                     ),

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              menTshirtData[index].price.toString(),
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              menTshirtData[index].price1.toString(),
                              style: TextStyle(
                                  color: AppColor.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              menTshirtData[index].discount,
                              style: const TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
