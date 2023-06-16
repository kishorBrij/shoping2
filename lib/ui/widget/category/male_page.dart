import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping2/ui/widget/category/tshirt_catageory.dart';
import 'package:shoping2/utils/color.dart';
import '../../../modeldata/product_data.dart';

class MenPage extends StatefulWidget {
  const MenPage({Key? key}) : super(key: key);

  @override
  State<MenPage> createState() => _MenPageState();
}

class _MenPageState extends State<MenPage> {
  int selectedIndex = 0;

  PageController pageController = PageController();

  //int pageCount = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        Container(
          width: 100,
          color: Colors.cyanAccent.withOpacity(.1),
          child: ListView.separated(
              itemCount: menData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      pageController.jumpToPage(index);
                    });
                  },
                  child: Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        height: (selectedIndex == index) ? 40 :0,
                        color: Colors.black54,
                        width: 5,
                      ),
                      Expanded(
                        child: AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            alignment: Alignment.center,
                            height: 40,
                            color: (selectedIndex == index)
                                ? Colors.green.withOpacity(.3)
                                : Colors.transparent,
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 4),
                            child: Text(menData[index].name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColor.textBlack,
                                    // fontWeight: FontWeight.w600,
                                    fontSize: 15))),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 5,
                );
              },
              ),
        ),
        Expanded(
            child: PageView(
          controller: pageController,
          children: [
            // for (int i = 0; i < pageCount; i++)
            GridView.builder(
              itemCount: menTopWearData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: .72,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(const TshirtCategory());
                  },
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
                            height: 145,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15)),
                                child: Image.asset(
                                  menTopWearData[index].image,
                                  fit: BoxFit.cover,
                                ))),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          menTopWearData[index].name,
                          style: TextStyle(
                              color: AppColor.textBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        )),
      ],
    )));
  }
}
