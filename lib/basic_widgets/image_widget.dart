import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/polinema_logo.png"),
      width: 200,
      height: 200,
      fit: BoxFit.contain,
    );
  }
}
