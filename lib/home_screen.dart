import 'package:animal_app/congiguration.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactory = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scaleFactory),
      duration: Duration(microseconds: 250),
      color: Colors.grey[200],
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          setState(() {
                            xoffset = 0;
                            yoffset = 0;
                            scaleFactory = 1;
                            isDrawerOpen = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xoffset = 230;
                            yoffset = 150;
                            scaleFactory = 0.6;
                            isDrawerOpen = true;
                          });
                        }),
                Column(
                  children: [
                    Text("Location"),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryGreen,
                        ),
                        Text('Ukraine')
                      ],
                    )
                  ],
                ),
                CircleAvatar()
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text('Search pet to adopt'),
                Icon(Icons.settings)
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: shadowList,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          categories[index]['iconPath'],
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(categories[index]['name'])
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 240,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList),
                        margin: EdgeInsets.only(top: 40),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat2.png'),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 60, bottom: 20),
                    decoration: BoxDecoration(
                      boxShadow: shadowList,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
