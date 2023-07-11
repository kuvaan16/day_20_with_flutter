import 'package:day_20_with_flutter/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ionicons/ionicons.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(),
            Positioned(
              child: Container(
                child: Image.asset("img/kk.jpg"),
              ),
            ),
            Positioned(
              top: 45,
              left: 20,
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 2),
                decoration: BoxDecoration(
                    color: Color.fromARGB(68, 200, 230, 201),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.teal.shade700,
                  size: 20,
                ),
              ),
            ),
            Positioned(
              top: 45,
              right: 20,
              child: Container(
                padding: EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(68, 200, 230, 201),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.menu,
                  color: Colors.teal.shade700,
                  //size: 20,
                ),
              ),
            ),
            Positioned(
              top: 500,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  width: 398,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80),
                      )),
                  child: Column(
                    children: [
                      InkWell(
                        child: Text(
                          "Kuvaan16",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Ionicons.location_sharp,
                            color: Colors.grey,
                            size: 20,
                          ),
                          Text(
                            "Duhok, Kurdistan",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "16",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                Text(
                                  "Shots",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              child: VerticalDivider(
                                width: 3,
                                thickness: 2,
                                color: Colors.grey,
                              ),
                              width: 4,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "339",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              child: VerticalDivider(
                                width: 3,
                                thickness: 2,
                                color: Colors.grey,
                              ),
                              width: 4,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "116",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: .01,
                                    blurRadius: 8,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.teal.shade700,
                                    Colors.teal.shade300
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 0.01,
                                      blurRadius: 8,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                  color: Colors.white),
                              child: Text(
                                "Message",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
