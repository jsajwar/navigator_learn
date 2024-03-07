// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 88, 172, 240),
          Color.fromARGB(255, 147, 92, 241)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_forward, size: 30),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              child: Text(
                "Way to Next page ---> ",
                style: TextStyle(fontSize: 23, color: Colors.green),
              ),
              style: ElevatedButton.styleFrom(elevation: 10),
            ),
          ],
        ),
      ),
    ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 88, 172, 240),
            Color.fromARGB(255, 147, 92, 241)
          ], begin: Alignment.bottomRight, end: Alignment.topLeft),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 30,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  " <-- Way Back to page  ",
                  style: TextStyle(fontSize: 23, color: Colors.green),
                ),
                style: ElevatedButton.styleFrom(elevation: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
