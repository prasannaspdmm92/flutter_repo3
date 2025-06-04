import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/screens/row_column_stack.dart';

class ImageGallaryScreen extends StatelessWidget {
  const ImageGallaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:Text("Image gallery"),
      ),
      body:Column(
        children:[
          InkWell(
            onTap:(){
             print("Image is clicked");
             Navigator.push(context, MaterialPageRoute(builder: (context)=>RowColumnStack()));

            },
            child: 
              // Image.asset(name),//local file that is assets
              // Image.network(src), //created by using image url
              // Image.file(file),//image created by using file objects.
              // Image.memory(bytes),//image created by file bytes.
              Image.asset("assets/images/app_image1.jpg"),
            
            
          ),
        ]
      )
    );
  }
}