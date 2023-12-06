import 'package:air_rands/presentation/on_boarding_screen/on_boarding_slide.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/Plane.png',
      'assets/images/Ship.png',
      'assets/images/Tour.png',
    ];
    List<RichText> writeUps = [
      RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
          ),
          children: [
            TextSpan(text: 'Book a '),
            TextSpan(
                text: 'Flight ',
                style: TextStyle(
                  color: Color(0xFFE30613),
                )),
            TextSpan(text: 'in minutes')
          ],
        ),
      ),
      RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
          ),
          children: [
            TextSpan(text: 'Swift universal '),
            TextSpan(
                text: 'Cargo ',
                style: TextStyle(
                  color: Color(0xFFE30613),
                )),
            TextSpan(text: 'solutions')
          ],
        ),
      ),
      RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.black,
          ),
          children: [
            TextSpan(
                text: 'Tour ',
                style: TextStyle(
                  color: Color(0xFFE30613),
                )),
            TextSpan(text: 'the finest world locations')
          ],
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffFBFBFB),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffFBFBFB),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: TextButton.icon(
                onPressed: () {},
                icon: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
                label: const Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )),
          ),
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          //   child: GestureDetector(
          //     onTap: () {},
          //     child: RichText(
          //       text: const TextSpan(
          //         children: [
          //           TextSpan(
          //             text: 'Skip',
          //             style: TextStyle(
          //               color: Colors.grey,
          //               fontSize: 16.0,
          //             ),
          //           ),
          //           WidgetSpan(
          //             child: Icon(
          //               Icons.chevron_right,
          //               color: Colors.grey,
          //               size: 16.0,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: /*MediaQuery.of(context).size.height * .5*/ 395.0,
              child: PageView.builder(
                controller: _controller,
                itemCount: images.length,
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return OnBoardingSlide(
                    image: images[index],
                    writeUp: writeUps[index],
                  );
                },
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    images.length, (index) => buildPageIndicator(index))),
            const SizedBox(
              height: 105.0,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFE30613))),
                onPressed: () {
                  setState(() {
                    if (_currentPage < images.length - 1) {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.pushReplacementNamed(context, '/Login');
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 64.0, vertical: 16.0),
                  child: Text(
                    _currentPage != images.length - 1 ? 'Next' : 'Continue',
                    style: const TextStyle(fontSize: 20.0),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget buildPageIndicator(int index) {
    return Container(
      height: 12,
      width: 16,
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE30613)),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12 / 2),
          topRight: Radius.circular(12 / 2),
          bottomRight: Radius.circular(12 / 2),
        ),
        color: _currentPage == index
            ? const Color(0xFFE30613)
            : Colors.transparent,
      ),
    );
  }
}
