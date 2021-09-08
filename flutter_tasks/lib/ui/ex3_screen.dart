import 'dart:async';

import 'package:flutter/material.dart';
class AnimationScreen extends StatefulWidget {
  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _height = 150;
  double _width = 150;
  Timer? timer;

  void _changeSize(){
    setState(() {
      if(_height == 150) {
        _height = 300;
        _width = 300;
      }
      else if(_height == 300){
        _height = 150;
        _width = 150;
      }
    });
  }


  @override
  void initState(){
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) => _changeSize());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.bounceOut,
          height: _height,
          width: _width,
          color: Colors.red,
        ),
      ),
    );
  }
}
