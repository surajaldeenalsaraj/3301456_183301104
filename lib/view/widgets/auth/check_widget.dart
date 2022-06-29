import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/logic/controllers/auth_controller.dart';
import 'package:shop_app/utils/theme.dart';
import 'package:shop_app/view/widgets/text_utils.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({Key? key}) : super(key: key);

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              controller.checkBox();
            },
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller.isCheckBox
                  ? Get.isDarkMode
                  ? const Icon(
                Icons.done,
                color: pinkClr,
              )
                  : Image.asset('assets/images/check.png')
                  : Container(),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              TextUtils(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                text: "okudum ve anladım ",
                color: Get.isDarkMode ? Colors.white : Colors.black,
                underLine: TextDecoration.none,
              ),
              InkWell(
                onTap: (){

                },
                child: TextUtils(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  text: "aydınlatma metnini",
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underLine: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}