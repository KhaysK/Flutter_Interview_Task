import 'package:flutter/material.dart';
import 'ex2_green_screen.dart';

class BlueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
        child: Center(
            child: TextButton(
              child: const Text("На экран 2",
              style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => GreenScreen()
                ));
              },
            ),
        )
    );
  }
}

