import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_app/routes/routes.dart';
import 'package:shop_app/utils/theme.dart';
import 'package:shop_app/view/widgets/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(children: [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'assets/images/background.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Container(
          color: Colors.black.withOpacity(0.2),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: TextUtils(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    text: 'Hoş Geldiniz',
                    color: Colors.white,
                    underLine: TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TextUtils(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      text: "Saglam",
                      color: mainColor,
                      underLine: TextDecoration.none,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    TextUtils(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      text: "Shop",
                      color: Colors.white,
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    )),
                onPressed: () {
                  Get.toNamed(Routes.loginScreen);
                },
                child: const TextUtils(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  text: ' Başla ',
                  color: Colors.white,
                  underLine: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextUtils(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    text: "Hesabınız yok mu?",
                    color: Colors.white,
                    underLine: TextDecoration.none,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.signUpScreen);

                    },
                    child: const TextUtils(
                      text: ' Üye Ol',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      underLine: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
            ],
            ),
        ),

          );

  }
}
