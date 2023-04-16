import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
   CustomDropDown({super.key, required this.onChanged,required this.items});

    void Function(String?)? onChanged;
    List<String> items;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {

    String dropdownValue = "One";



  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: const SizedBox(),
      value: dropdownValue,
      isDense: true,
      isExpanded: true,
      borderRadius: BorderRadius.circular(10),
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      onChanged: (String? newValue) {
        widget.onChanged;
        setState(() {
        dropdownValue=newValue!;
          
        });
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF071731)),),
        );
      }).toList(),
    );
  }
}
