import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import 'posts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 380,
                  ),
                  Positioned(
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(150),
                            bottomRight: Radius.circular(150)),
                        gradient: LinearGradient(
                          colors: [Colors.teal.shade700, Colors.teal.shade300],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 20,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 10, top: 5, bottom: 5, right: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    right: 20,
                    child: Container(
                      padding:
                          EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        //size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 220,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        "img/kk.jpg",
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Kuvaan16",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Ionicons.location_sharp,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Text(
                    "Duhok, Kurdistan",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "I'm web and app developer. Love\n traveling.Nice to see you here.",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "16",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
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
                              fontWeight: FontWeight.bold, fontSize: 24),
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
                              fontWeight: FontWeight.bold, fontSize: 24),
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shots",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      children: [
                        Icon(
                          Ionicons.menu,
                          size: 28,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Ionicons.grid_outline,
                          size: 22,
                          color: Colors.teal.shade300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Posts(),
            ],
          ),
        ),
      ),
    );
  }
}
