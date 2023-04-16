

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  void Function()? onTap;
  final String title;
   final double? height;
   final double? width;
   CustomElevatedButton({super.key, required  this.onTap, required this.title , this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(width??MediaQuery.of(context).size.width * 0.9, height??50),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              child:  Text(title),
            );
  }
}