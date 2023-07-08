import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/controller/splash_screen_controller.dart';

import 'package:pdf_reader/utils/app_colors.dart';


class PdfFileScreen extends GetView<SplashScreenController> {
  const PdfFileScreen({super.key});
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
              "One Hundred Years of Solitude",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontFamily: "Montserrat",
              ),
            ),

          ],
        ),
      ),
    );
  }
}
