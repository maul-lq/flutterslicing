import 'package:flutter/material.dart';
import 'package:flutterslicing/page/home_page1.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                "images/onboarding_illustration.png",
                height: 250.0,
              )),
              Spacer(),
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "180K Store",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xffCBCCD5)),
                      )
                    ]),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Order Your\nFavorite Foods",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff212131)),
                    ),
                  ],
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 24.0),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffff81c2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        "Explore Now!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
