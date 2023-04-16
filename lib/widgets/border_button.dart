

import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  void Function()? onTap;
  final String title;
   BorderButton({super.key, required  this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.9, 50),
                side: const BorderSide(width: 1,color: Colors.blue),
                elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              child:  Text(title,style: const TextStyle(color: Colors.blue),),
            );
  }
}