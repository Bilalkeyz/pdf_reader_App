import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/controller/splash_screen_controller.dart';
import 'package:pdf_reader/screens/pdf_list_screen.dart';
import 'package:pdf_reader/utils/app_colors.dart';
import 'package:pdf_reader/widgets/roundbutton.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "PDF Reader",
              style: TextStyle(fontSize: 50, color: Colors.black,fontFamily: "Montserrat",),
            ),
            Center(
                child: Image(
                    image: AssetImage('assets/images/splashscreenlogo.png'))),
            RoundButton(title: 'Get Started', onTap: () {
              Get.to(PdfListScreen());
            })
          ],
        ),
      ),
    );
  }
}
