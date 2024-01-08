import 'package:flutter/material.dart';

class DefaultIconBack extends StatelessWidget {
  const DefaultIconBack({
    super.key,
    required this.left,
    required this.top
    });

  final double left;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: left, top: top),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
