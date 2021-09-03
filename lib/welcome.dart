import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Container(
      color: Colors.white,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.4),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Hi Jeet,",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Welcome to",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Gathrr!",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: height * 0.05),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Please turn on your GPS to find",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "out better events suggestions",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "near you.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ),
            SizedBox(height: height * 0.05),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      //  side: BorderSide(width: width * 0.9)
                      fixedSize: Size(width * 0.9, height * 0.07)),
                  onPressed: () {},
                  child: Text(
                    "Turn On GPS",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
