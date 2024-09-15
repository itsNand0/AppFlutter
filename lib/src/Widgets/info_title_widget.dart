import 'package:flutter/material.dart';

class InfoTitle extends StatelessWidget {
  const InfoTitle({super.key, required this.title, required this.Subtitle});

  final String title;
  final String Subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white
        ),), const SizedBox(height: 5,),
        Text(Subtitle, style: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white70
        ),),
      ],
    );
  }
}