
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app2/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const  Icon(
                Icons.favorite,
                size: 30,
              ),
              IconButton(
                onPressed: () {
                  print("Liked the post");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomeScreen()));
                },
                icon:const Icon(
                  Icons.thumb_up_sharp,
                  size: 30,
                ),
              ),
              const Text(
                "welcome to APP",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                ),
              ),
              TextButton(
                onPressed: () {
                  print("forgot screen");
                },
                child:const Text(
                  "Forgot password",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //InkWell widget is used when we want touching effect for icons,text,container,and other widgets,instead of using buttons.Buttons have one touching property means onPressed,while Inkwell having more touching properties like onTap,onDoubleTap and more.It shows touching effect.
                  print("onTap is performed");
                },
                onDoubleTap: () {
                  print("onDoubleTap is performed");
                },
                onLongPress: () {
                  print('onlongpress is performed');
                },
                child:const Icon(Icons.face_2_rounded, size: 30),
              ),
              GestureDetector(
                //for getting InkWell and GetureDetector widgets keep cursor on ur widget click on bulb symbol press wrap with widget,then u get widget ,then remove widget spelling write InkWell or GestureDectector.
                onDoubleTap: () {
                  //GestureDector have same properties like InkWell.Main difference is InkWell shows touching effect where as GestureDetector does not have touching effect,but perform touching action.
                  print("onDoubleTap GestureDetector performed");
                },
                onTertiaryTapDown: (details) {
                  print("tertiary tap is performed");
                },
        
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  margin:const EdgeInsets.only(top: 20),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Button is pressed");
                  },
                  child: Text('Registration',
                      style:const TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                      )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding:const EdgeInsets.all(10),
                  )),
              Align(
                  //this is used for any widget to perform alignment
                  alignment: Alignment.topLeft,
                  child:const Text(
                    "Customer Details",
                    style: TextStyle(color: Colors.cyanAccent),
                  )),
              const Padding(
                padding:  EdgeInsets.all(10.0),
                child: TextField(
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    obscureText:
                        true, //this property is allows bool values when u write true input is hidden.When u wrie false input is not hide.
                    enabled:
                        true, //it is also take bool values when u write false TextField is disabled means u not able to give input.When u write true TextField is enabled,means u can give input.
                    decoration: InputDecoration(
                        hintText: "Enter phone number",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        labelText: "Cell number",
                        prefixIcon: Icon(Icons.phone_android),
                        prefix: Text("+91"),
                        prefixIconColor: Colors
                            .brown, //in this property u can write  any widget
                        suffix: Icon(Icons
                            .close), //this is apper at the end of the TextField.
                        border: OutlineInputBorder(),
                        // counterText:"", this is used when u don not want counter under textfield.Here counter not shown.When maxLenght property used in textfield,then counter appear under textfield.
                        counterStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              const Padding(
                padding:  EdgeInsets.all(10.0),
                child: TextField(
                    minLines:
                        3, //when u write minLines then maxLines property must and should write
                    maxLines:
                        10, //u can write maxLines  only with writing minLines property.
        
                    decoration: InputDecoration(
                        hintText:
                            "Enter Biodata", //it is appear before input is given.
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        labelText:
                            "Bio Data", //it appears on top border of the TextField widget
        
                        border: OutlineInputBorder(),
                        // counterText:"", this is used when u don not want counter under textfield.Here counter not shown.When maxLenght property used in textfield,then counter appear under textfield.
                        counterStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
