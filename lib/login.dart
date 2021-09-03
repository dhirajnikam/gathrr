import 'package:flutter/material.dart';
import 'package:gathhr/forget.dart';
import 'package:gathhr/register.dart';
import 'package:gathhr/welcome.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Stack(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/Group 372.png',
                    scale: 5,
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Center(
                        child: Image.asset(
                      'assets/gathrr.png',
                      scale: 5,
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.15,
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
                    prefixIcon: Icon(Icons.lock_outline),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Forget()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text(
                      "Forget password?",
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                      ),
                      textAlign: TextAlign.right,
                    )),
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
                    "Log In",
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Resgister()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account?",
                            style: TextStyle(
                              color: Colors.black12,
                            ),
                            textAlign: TextAlign.center),
                            Text("Register",
                            style: TextStyle(
                              color: Colors.deepPurpleAccent,
                            ),
                            textAlign: TextAlign.center),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
