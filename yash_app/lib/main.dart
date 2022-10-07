// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yash_app/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        drawer: navBar(),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: const Text('Portfolio'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: const CircleAvatar(
                radius: 100.0,
                backgroundColor: Color.fromARGB(255, 33, 161, 253),
                backgroundImage: AssetImage('assets/images/Untitled.jpg'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: Card(
                    color: Color.fromARGB(255, 243, 172, 255),
                    child: Text(
                      "Hey! I am\nYASH VARSHNEY ",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'fonts/GemunuLibre-VariableFont_wght.ttf',
                        color: Colors.black,
                        fontWeight: FontWeight.w800,

                        // like <h1> in HTML
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Card(
                color: Color.fromARGB(255, 243, 172, 255),
                child: Text(
                  "I am student in Ajay Kumar Garg Engineering college\nI am working as trainee at Big Data Center of Excellence ",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 6, 6, 6),
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic
                      // like <h1> in HTML
                      ),
                ),
              ),
            ),

            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 170.0,
                  height: 50.0,

                  child: Card(
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ), //Text
                    ), //Center
                  ), //Card
                ),
              ],
            ),

            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/1.png"),
                      fit: BoxFit.cover,
                    ),
                    border: Border(
                      top: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                      bottom: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                      left: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //Borderside
                      right: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage("assets/images/2.webp"),
                        fit: BoxFit.cover),
                    border: Border(
                      top: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                      bottom: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                      left: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //Borderside
                      right: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/3.webp"),
                      fit: BoxFit.cover,
                    ),
                    border: Border(
                      top: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                      bottom: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                      left: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //Borderside
                      right: BorderSide(
                          width: 4,
                          color: Colors.purple,
                          style: BorderStyle.solid), //BorderSide
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
