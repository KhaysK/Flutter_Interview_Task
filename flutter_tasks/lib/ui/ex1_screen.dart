import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
        child: ListView.separated(
            itemBuilder: (context, index) => Text(
              "$index",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20
              ),
            ),
            separatorBuilder: (context, index) => const Divider(thickness: 3,),
            itemCount: 10),
      ),
    );
  }
}
