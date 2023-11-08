import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    final List<String> category = ["sports","Eletronics", "Tools", "Outdoor","Plant","Flora","Flora","Flora","Flora","Flora"];

    return  Scaffold(
      appBar: PreferredSize( 
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 24.0,),
                ElevatedButton.icon(
                  onPressed: (){}, 
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white), 
                  shadowColor: MaterialStateProperty.all(Colors.black12)),
                  icon: Icon(Icons.pin_drop, color: Colors.black,), 
                  label: Text("Location",style: TextStyle(color: Colors.black),)
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.map, color: Colors.black))
              ],
            ),
          ),
        )
      ),
      body: SafeArea(
        child: Column(
          children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LAINAPPI", 
                style: TextStyle(
                  color: Colors.green, 
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold
                  ),
                  ),
                  Text("Not everything need to be owned",
                    style: TextStyle(
                      color: const Color.fromARGB(179, 54, 54, 54),
                      fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0,),
                  Center(
                    child: SearchBar(
                      leading: Icon(Icons.search),
                      hintText: "Search Lainappi",
                    ),
                  ),
                  
              ],
            ),
              ),
              SizedBox(height: 24.0,),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal:8.0,vertical: 2.0),
                    itemCount: category.length,
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 202, 202, 202).withOpacity(0.1),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(1, 1)
                            )
                          ]),
                        width: 100,
                        height: 30,
                        child: Center(child: Text(category[index])),
                      );
                      }
                    ),
                )
        ],)
        ),
    );
  }
}
