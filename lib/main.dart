
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar in flutter"),
        ),
        body: Material(
          child: MySnackBar(),

        ),
      ),
    ),
  );
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: Text("Click me"),
          onPressed: (){
        const snackBar = SnackBar(
          showCloseIcon: true,
          backgroundColor: Colors.blueAccent,
          content: Text("Welcome here to my page",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(width: 2,color: Colors.black),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

      },
      ),
    );
  }
}

