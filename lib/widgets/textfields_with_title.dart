import 'package:flutter/material.dart';

class TextFieldWithTitle extends StatelessWidget {
  final String title;
  final Widget? suffixIcon;
  TextEditingController textEditingController;
  TextFieldWithTitle(
      {super.key, required this.title, required this.textEditingController, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(color: Color(0xFF909090)),),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: textEditingController,
          decoration:  InputDecoration(
            suffixIcon: suffixIcon,
            contentPadding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: Color(0xFFD9D9D9)), 
              ),
               focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: Color(0xFFD9D9D9)), 
              ),
               focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: Color(0xFFD9D9D9)), 
              ),
               errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: Color(0xFFD9D9D9)), 
              ),
              border: const OutlineInputBorder()),
        )
      ],
    );
  }
}
