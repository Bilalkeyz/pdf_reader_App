import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_reader/controller/splash_screen_controller.dart';
import 'package:pdf_reader/utils/app_colors.dart';

class PdfListScreen extends GetView<SplashScreenController> {
  final List<String> name = [
    " One Hundred Years of Solitude ",
    " Great Expectations ",
    " Ulysses",
    " Don Quixote"
        " Invisible Man ",
    " The Bible",
    " Wuthering Heights",
    ". Mrs. Dalloway "
  ];
  PdfListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        title: const Center(
            child: Text("PDF Reader",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontFamily: "Montserrat",
                ))),
      ),
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: const Image(
                              image: AssetImage('assets/images/pdficon.png')),
                          title: Center(child: Text(name[index].toString())),
                          trailing: const Icon(Icons.share),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
