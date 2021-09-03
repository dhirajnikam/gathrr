import 'package:flutter/material.dart';
import 'package:gathhr/login.dart';
import 'package:gathhr/welcome.dart';

class Resgister extends StatelessWidget {
  const Resgister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Container(
      color: Colors.white,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Group 345.png'), scale: 3),
                      borderRadius: BorderRadius.all(Radius.circular(75.0)),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset(
                      'assets/Group 347.png',
                      scale: 8,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.06),
            Container(
              height: height * 0.07,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Name',
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Email',
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: Icon(Icons.email_outlined),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Password',
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: Icon(Icons.email_outlined),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              height: height * 0.07,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Confirm Password',
                  hintTextDirection: TextDirection.ltr,
                  prefixIcon: Icon(Icons.lock_outline),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    //  side: BorderSide(width: width * 0.9)
                    fixedSize: Size(width * 0.9, height * 0.07)),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account?",
                          style: TextStyle(
                            color: Colors.black12,
                          ),
                          textAlign: TextAlign.center),
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
