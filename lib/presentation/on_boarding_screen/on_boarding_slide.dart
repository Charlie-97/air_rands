import 'package:flutter/material.dart';

class OnBoardingSlide extends StatelessWidget {
  final String image;
  final RichText writeUp;
  const OnBoardingSlide({super.key, required this.image, required this.writeUp});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          writeUp,
          const SizedBox(
            height: 50,
          ),
          Container(
              constraints: const BoxConstraints(
                maxWidth: 307,
                maxHeight: 235,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(235 / 2),
                  topRight: Radius.circular(235 / 2),
                  bottomRight: Radius.circular(235 / 2),
                ),
              ),
              child: Image.asset(image))
        ],
      ),
    );
  }
}
