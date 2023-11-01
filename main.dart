import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "CustomButton",
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return Center(
    
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton("Submit"),
        SizedBox(
          height: 10,
        ),
        CustomButton("Done"),
         SizedBox(
          height: 10,
        ),
        CustomButton("Ok"),
         SizedBox(
          height: 10,
        ),
        CustomButton("Resat"),
         SizedBox(
          height: 10,
        ),
      ],
    ),
   );
  }
}

class CustomButton extends StatelessWidget{
  final String title;
  CustomButton(this.title);

  @override
  Widget build(BuildContext context) {
   return InkWell(
    onTap: () {
      print("OnTap");
    },
     child: Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.pink
      ),
   
      child: Center(child: Text(title)),
     ),
   );
  }
}