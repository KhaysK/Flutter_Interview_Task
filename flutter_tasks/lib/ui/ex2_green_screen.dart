import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Container(
        color: Colors.green,
          child: Center(
            child: TextButton(
              child: const Text("На экран 1",
                style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          )
      ),
    );
  }
}
