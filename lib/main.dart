import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

final Uri _url1 = Uri.parse('https://github.com/harshpanzer');
final Uri _url2 =
    Uri.parse('https://www.linkedin.com/in/harsh-sharma-30ba31226/');
final Uri _url3 = Uri.parse('https://www.instagram.com/harshpathak371/');
final Uri _url4 = Uri.parse('https://www.codechef.com/users/harshsharma371');

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
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  final subjectcontroller = TextEditingController();

  Future sendEmail(
      String name, String email, String message, String subject) async {
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
    return response.statusCode;
  }

  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw 'Could not launch $_url1';
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(_url2)) {
      throw 'Could not launch $_url2';
    }
  }

  Future<void> _launchUrl3() async {
    if (!await launchUrl(_url3)) {
      throw 'Could not launch $_url3';
    }
  }

  Future<void> _launchUrl4() async {
    if (!await launchUrl(_url4)) {
      throw 'Could not launch $_url4';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "OpenSans"),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: cindex == 0
            ? SafeArea(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/photu.jpg'),
                          fit: BoxFit.fill)),
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
                        "App Developer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
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
                          padding: EdgeInsets.fromLTRB(25, 5, 5, 5),
                          child: Text(
                            "I am a app developer specializing in building Beautiful UI using flutter.I excel in teamwork and would like to work in a healthy organisation.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                          ),
                          SizedBox(height: 32.0),
                          GestureDetector(
                            onTap: () => _launchUrl1(),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                  ExactAssetImage('images/git.png'),
                            ),
                          ),
                          SizedBox(
                            width: 48,
                          ),
                          GestureDetector(
                            onTap: () => _launchUrl2(),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                  ExactAssetImage('images/link.png'),
                            ),
                          ),
                          SizedBox(
                            width: 48,
                          ),
                          GestureDetector(
                            onTap: () => _launchUrl3(),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                  ExactAssetImage('images/instagram.webp'),
                            ),
                          ),
                          SizedBox(
                            width: 48,
                          ),
                          GestureDetector(
                            onTap: () => _launchUrl4(),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundImage:
                                  ExactAssetImage('images/code.png'),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/photu.jpg'),
                        fit: BoxFit.fill)),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.all(20),
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
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: 'name@example.com',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: subjectcontroller,
                        decoration: InputDecoration(
                          labelText: "Subject",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: messageController,
                        decoration: InputDecoration(
                          labelText: "Message",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                          height: 45,
                          width: 110,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: const Color(0xff151534),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                final response = await sendEmail(
                                    nameController.value.text,
                                    emailController.value.text,
                                    messageController.value.text,
                                    subjectcontroller.value.text);

                                nameController.clear();
                                emailController.clear();
                                messageController.clear();
                                subjectcontroller.clear();
                              }
                            },
                            child: const Text('Send',
                                style: TextStyle(fontSize: 16)),
                          ))
                    ],
                  ),
                ),
              ),
        bottomNavigationBar: SalomonBottomBar(
          //backgroundColor: Color.fromARGB(255, 155, 74, 192),
          selectedItemColor: Color.fromARGB(255, 239, 150, 15),
          items: [
            SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home")),
            SalomonBottomBarItem(
                icon: Icon(Icons.favorite), title: Text("Contacts"))
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
  }
}
