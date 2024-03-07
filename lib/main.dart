// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import "package:flutter/material.dart";

void main() {
  runApp(const MaterialApp(
    home: First_page(),
  ));
}

class First_page extends StatelessWidget {
  const First_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                      builder: (context) => Second_page(),
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

class Second_page extends StatelessWidget {
  const Second_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
