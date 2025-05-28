import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget
  {
    @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
            backgroundColor:Colors.pink,
            title:Text("Prasanna Home Applaiences"),
            leading:Icon(Icons.home,
            color:Colors.purple,)
        ),
    
        body:
        Container(
           padding:EdgeInsets.only(top: 10),
          color:Colors.greenAccent,
          child: Column(
            children: [
              // SizedBox(height: 20,),
              Center(
                // heightFactor:,
                child: Container(
                  // padding:EdgeInsets.only(top: 10),
                  height:100,
                  width:100,
                 padding:EdgeInsets.only(left:10),
                  // child:Icon(Icons.access_alarm,size:34,color:Colors.green ),
                  decoration: BoxDecoration(color: Colors.blueGrey,
                  borderRadius:BorderRadius.circular(21),
                  border:Border.all(
                    color:Colors.black87,width:8,style:BorderStyle.solid,
                  ),
                  boxShadow:[BoxShadow(color:Colors.indigoAccent,spreadRadius:6)]),
                  alignment:Alignment.center,
                  child:Text("I am mixi",style:TextStyle(color:Colors.white,fontSize:20,
                  fontWeight:FontWeight.w200,
                  letterSpacing:3,
                  wordSpacing:5,
                  decoration:TextDecoration.underline,
                  fontStyle:FontStyle.italic,
          
                   )  ),
                   ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("2nd appliance",style:TextStyle(color:Colors.black38,
                fontWeight:FontWeight.bold,),
                 ),
              ),
            Container(height:100,
            width:100,
            color:Colors.indigoAccent,
            // margin:EdgeInsets.zero,//for no margin we use this
            // margin:EdgeInsets.fromLTRB(4, 8, 10, 0),//this is used for diffrerent margin values and also u kept 1 side or 2 sides or 3sides margin 0 or all.
           margin:EdgeInsets.all(10),) ,//this property is used when u want equal margin all sides.
           Container(height:100,
           width:100,
           color:Colors.redAccent,
          //  margin:EdgeInsets.only(left:10,top:10),//this is used when u want to give margin one side or more than one sides.while typing every time u should write side name like top, bottom etc and value.
           margin:EdgeInsets.symmetric(horizontal:20),)],// this one gives the margin to the opposite sides like left-right,top-bottom.Here vertical prperty supported by symmetric,vertical means top-bottom,horizontal maens left-right.
          ),
        ),
        drawer: Drawer(),
        endDrawer:Drawer(),
        floatingActionButton:FloatingActionButton(onPressed:(){
          // print("button pressed");
        },
        child:Icon(
          Icons.favorite,
          color:Colors.blue ),
        ),
        bottomNavigationBar: BottomNavigationBar(items:[
          BottomNavigationBarItem(icon: Icon(Icons.house),label:"Home"),
          BottomNavigationBarItem(icon:Icon(Icons.verified_user),label:"Profile"),
        ]),
    );
        }
  }           