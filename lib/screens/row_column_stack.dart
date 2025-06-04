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
        child: Wrap(
          children: [
            Text("Row"),
            Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {
                    print("screen navigation performed");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
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
                Spacer(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrange,
                ),
                Spacer(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.tealAccent,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            Text("column"),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amberAccent,
                  ),
                  SizedBox(
                    width:10,
                    height:10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purpleAccent,
                  ),
                  SizedBox(
                    height:10,
                    width:10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.cyanAccent,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ),
            Text("Stack"),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Stack(
                  //in this widget,all created widgets  are lay on one on another.
                  children: [
                    Container(
                      //this is 1st created widget in Stack() widget,so it is called as base widget.
                      height: 150,
                      width: 150,
                      color: Colors.pink,
                    ),
                    Positioned(
                      //this Positiond() is used in Stack widget in order to position the widgets which are lay on the base widget.
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 75,
                        width: 75,
                        color: Colors.orange,
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.grey,
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
