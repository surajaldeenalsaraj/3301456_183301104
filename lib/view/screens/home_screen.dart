
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:shop_app/routes/routes.dart';
import 'package:shop_app/utils/theme.dart';
import 'package:shop_app/view/widgets/home/card_items.dart';
import 'package:shop_app/view/widgets/home/search_text_form.dart';
import 'package:shop_app/view/widgets/home/tag_list.dart';
import 'package:shop_app/view/widgets/text_utils.dart';

import '../widgets/home/MyDrawer.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        key: _keyDrawer,
        drawer: MyDrawer(),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Get.isDarkMode ? darkGreyClr : mainColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                 Container(
                   padding: EdgeInsets.all(15.0),
                   child: Row(
                     children: <Widget>[
                       GestureDetector(
                         onTap: (){
                           _keyDrawer.currentState!.openDrawer();
                         },
                         child: new Icon(Icons.menu,color: Colors.white,size: 35,),
                       ),
                       const SizedBox(width: 10,),
                       Expanded(child: new Container(
                         margin: EdgeInsets.all(0),
                         child: SearchFormText(),
                       ))
                     ],
                   ),
                 ),
                      const SizedBox(height: 20),


                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              TagList(),


              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextUtils(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    text: "Süper Fiyat, Süper Teklif",
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    underLine: TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CardItems(),
            ],
          ),
        ),
      ),
    );
  }
}