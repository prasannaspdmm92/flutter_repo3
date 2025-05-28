import 'package:flutter/material.dart';
import 'package:flutter_app2/screens/login_screen.dart';

class RowColumnStack extends StatelessWidget {
  const RowColumnStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("RowColumnStack",
                style: TextStyle(color: Colors.blueAccent))),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(onTap: () {
                        print("screen navigation performed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.purpleAccent,
                        child: Center(
                          child: Text("Login Screen",
                              style: TextStyle(color: Colors.black38)),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.tealAccent,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.amberAccent,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.purpleAccent,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.cyanAccent,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                )
              ],
            )));
  }
}
