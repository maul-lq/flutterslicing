import 'package:flutter/material.dart';
import 'package:flutterslicing/model/base.dart';
// import 'package:flutterslicing/model/base.dart';
import 'package:flutterslicing/page/detail_page.dart';
// import 'package:flutterslicing/page/onboarding.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Restaurant>? listResto;
  @override
  Widget build(BuildContext context) {
    Restaurant.connAPIRestaurant().then((value) {
      setState(() {
      listResto = value;
      });
    });
    final List<String> imgCategoriesName = ["bread", "carrot", "donut"];
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Image.asset(
                  "images/user_photo.png",
                  width: 70,
                  height: 70,
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Howdy",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xffcbccd5)),
                    ),
                    Text(
                      "Luna Polar",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Column(
            children: [
              Text(
                "What do you want\nfor launch?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                    hintText: "Search for pizza, burger, kebab",
                    hintStyle: MaterialStateProperty.resolveWith((states) {
                      return TextStyle(fontSize: 16, color: Color(0xffaaaaac));
                    }),
                    leading: Icon(
                      Icons.search_outlined,
                      color: Color(0xFFA1C0B2),
                    )),
              )
            ],
          )),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff212131)),
                ),
                SizedBox(
                  height: 62,
                  child: ListView.builder(
                      itemCount: imgCategoriesName.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffdfe2e4)),
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          margin: EdgeInsets.symmetric(horizontal: 2),
                          child: Row(children: [
                            Image.asset(
                              "images/cate_${imgCategoriesName[index]}.png",
                              width: 40,
                            ),
                            // Image.network("https://$imageSmallURL${listResto?[index].pictureId}",
                            //   width: 40,
                            // ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(toCapitalize(imgCategoriesName[index])),
                          ]),
                        );
                      }),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 30),
            child: Column(
              children: [
                Text(
                  "Most Ordered",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff212131)),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: listResto?.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      restaurant: listResto![index],
                                    ))),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white),
                          height: 80,
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: Row(
                            children: [
                              // Text("${listResto?.length}")
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "$imageSmallURL${listResto?[index].pictureId}",
                                  height: 80,
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${listResto?[index].name}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  // Text(
                                  //   data[index].category,
                                  //   style: TextStyle(
                                  //       fontSize: 16,
                                  //       fontWeight: FontWeight.w700,
                                  //       color: Color(0xffcbccd5)),
                                  // )
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "${listResto?[index].rating}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  Image.asset(
                                    "images/Star.png",
                                    height: 24,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 24,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  String toCapitalize(String word) {
    if (word.length >= 2) {
      return word.replaceFirst(word[0], word[0].toUpperCase());
    } else {
      return "ERROR: on word $word & word lenght = ${word.length}";
    }
  }
}
