import 'package:flutter/material.dart';
import 'package:gathhr/login.dart';

class Forget extends StatelessWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue,
        Colors.blueAccent,
        Colors.blue.shade900,
        Colors.black
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.02,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: width * 0.2,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Text(
              "Enter your email and will send",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            Text(
              "you instructions on how to reset it",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17, color: Colors.white),
                  hintText: ('Email'),
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  side: BorderSide(width: width * 0.9)
                    fixedSize: Size(width * 0.9, height * 0.07)),
                onPressed: () {},
                child: Text(
                  "Send",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
