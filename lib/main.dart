import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

// This code is a simple Flutter application that demonstrates the use of various Flutter widgets to create a basic user interface.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: PicScroll(),
    );
  }
}

class PicScroll extends StatelessWidget {
  const PicScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text("Task 7"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 33,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 25,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Text(
                "Welcome to our app ",
                style: TextStyle(
                  fontSize: 55,
                  color: Colors.pink,
                  fontFamily: ("Schyler"),
                ),
              ),
            ),
            Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  "assests/pexels-nati-87264186-29837298.jpg",
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  "assests/1.jpg",
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                "assests/3.jpg",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Image.asset(
                "assests/2.jpg",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Image.asset(
                "assests/4.jpg",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ]),
          ]),
        ));
  }
}
