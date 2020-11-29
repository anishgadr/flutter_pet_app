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
  int isSelectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scaleFactory),
      duration: Duration(milliseconds: 1100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
                      Text(
                        "Location",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: primaryGreen,
                          ),
                          Text(
                            'Kyve ,Ukaine',
                            style: TextStyle(
                                color: primaryGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
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
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  Text('Search pet to adopt'),
                  Icon(
                    Icons.slideshow,
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return buildContainer(index);
                },
              ),
            ),
            Container(
              height: 230,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sola',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              ),
                              Icon(Icons.ac_unit_outlined,
                                  color: Colors.grey[400])
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Abyssinian Cat',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '2 years old',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: primaryGreen,
                                size: 15,
                              ),
                              Text(
                                'Distance : 2.6 km',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                    letterSpacing: 1),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 230,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sola',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              ),
                              Icon(Icons.ac_unit_outlined,
                                  color: Colors.grey[400])
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Abyssinian Cat',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '2 years old',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: primaryGreen,
                                size: 15,
                              ),
                              Text(
                                'Distance : 2.6 km',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                    letterSpacing: 1),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 230,
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
                          child: Image.asset('images/pet-cat1.png'),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sola',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[700]),
                              ),
                              Icon(Icons.ac_unit_outlined,
                                  color: Colors.grey[400])
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Abyssinian Cat',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '2 years old',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: primaryGreen,
                                size: 15,
                              ),
                              Text(
                                'Distance : 2.6 km',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 12,
                                    letterSpacing: 1),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(int index) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSelectedindex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: isSelectedindex == index ? primaryGreen : Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                categories[index]['iconPath'],
                color:
                    isSelectedindex == index ? Colors.white : Colors.grey[700],
                height: 50,
                width: 50,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              categories[index]['name'],
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
