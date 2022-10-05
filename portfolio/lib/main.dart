import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "OpenSans"),
      home: Scaffold(
        body: cindex == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Color(0xffb5aeae),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 370,
                      width: double.infinity,
                      child: CircleAvatar(
                        radius: 120,
                        backgroundImage: AssetImage("images/sigma.jpeg"),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.elliptical(150, 50),
                          bottomLeft: Radius.elliptical(150, 50),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hi! I am Harsh Sharma",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    Text(
                      "App Devloper",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "About Harsh",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "I am a app devloper specializing in building Beautiful UI using flutter.I excel in teamwork and would like to work in a healthy organisation.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Message Me",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                      ),
                    )
                  ],
                ),
              ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffe37434),
          selectedItemColor: Color(0xff1cdfed),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Contacts")
          ],
          currentIndex: cindex,
          onTap: (index) {
            setState(() {
              cindex = index;
            });
          },
        ),
      ),
    );
    Future sendEmail({
      required String name,
      required String email,
      required String subject,
      required String message,
    }) async {
      final serviceId = 'service_had1d9l';
      final templateId = 'template_zk9n3wb';
      final userId = 'dXK4xY2hVRR28S4A6';
      final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'uname': name,
            'uemail': email,
            'usub': subject,
            'umess': message,
          }
        }),
      );
      print(response.body);
    }
  }
}
