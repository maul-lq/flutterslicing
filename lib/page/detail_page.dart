import 'package:flutter/material.dart';
import 'package:flutterslicing/model/listfood.dart';
// import 'package:flutterslicing/model/listfood.dart';

class DetailPage extends StatefulWidget {
  final ListFood data;
  const DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(widget.data.image),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      widget.data.category,
                      style: TextStyle(
                          fontSize: 16,
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
                        widget.data.rate.toString(),
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
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Text(
              widget.data.descripton,
              textAlign: TextAlign.center,
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
                      widget.data.price.toString(),
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
