import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/pdf_list_screen.dart';

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final VoidCallback onTap;
  const RoundButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 35,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              Get.to(PdfListScreen());
            },
              child: Icon(
            Icons.arrow_forward,
            color: Colors.black,
            size: 40,
          ))
        ],
      ),
    );
  }
}
