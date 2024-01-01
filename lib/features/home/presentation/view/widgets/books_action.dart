import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              onPressed: () {},
              text: r'19.99 $',
              backGroundColor: Colors.white,
              textColor: Colors.black),
        ),
        Expanded(
          child: CustomButton(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
                  
              onPressed: () {},
              text: 'Free Preview',
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white),
        ),
      ],
    );
  }
}
