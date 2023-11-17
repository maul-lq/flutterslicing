import 'package:flutter/material.dart';
import 'package:flutterslicing/model/base.dart';
// import 'package:flutterslicing/model/listfood.dart';
// import 'package:flutterslicing/model/listfood.dart';

class DetailPage extends StatelessWidget {
  final Restaurant restaurant;
  const DetailPage({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(40), child: AppBar()),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            heightFactor: 0.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(250),
              child: Image.network("$imageLargeURL${restaurant.pictureId}",
              width: 300,
              height:300),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      restaurant.city,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffcbccd5)),
                    )
                    // Text(),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        restaurant.rating,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF807E7E)),
                      ),
                    ),
                    Image.asset(
                      "images/Star.png",
                      height: 16,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
            child: Text(
              restaurant.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14
              ),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 12.0",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    Text("/ Porsi",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFBABBC2)))
                  ],
                ),
                SizedBox(width: 70,),
                Expanded(
                    child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Color(0xffff815e))),
                      child: Text("Order Now",
                          style: TextStyle(
                              color: Color(0xfffafafa),
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(height: 16,)
        ],
      )),
    );
  }
}
