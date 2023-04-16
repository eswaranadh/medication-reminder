import 'package:flutter/material.dart';
class CustomizeNotificationScreen extends StatefulWidget {
  const CustomizeNotificationScreen({super.key});

  @override
  State<CustomizeNotificationScreen> createState() =>
      _CustomizeNotificationScreenState();
}

class _CustomizeNotificationScreenState
    extends State<CustomizeNotificationScreen> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  // Declare this variable
  int selectedRadioTile = 0;
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text("Customize Notification",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customWIdget(
                    title: "Customize Notification Message",
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration.collapsed(
                              hintText:
                                '''It’s <Time>\nTake <Quantity> of your <Medicine Name> now!''',
                              floatingLabelBehavior: FloatingLabelBehavior.auto),
                        ),

                      ),
                    )),
                  const  SizedBox(height: 10),
                customWIdget(
                    title: "Notification Tone",
                    child: Container(
                      height: 40,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton<String>(
                        underline: const SizedBox(),
                        value: dropdownValue,
                        isExpanded: true,
                        borderRadius: BorderRadius.circular(10),
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        elevation: 16,
                        // hint:const Text("Sleeping Bells"),
                        style: const TextStyle(color: Colors.deepPurple),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                     const  SizedBox(height: 10),
                customWIdget(
                    title: "Snooze For",
                    child: Container(
                      height: 40,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton<String>(
                        underline: const SizedBox(),
                        value: dropdownValue,
                        isExpanded: true,
                        borderRadius: BorderRadius.circular(10),
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    )),
                     const  SizedBox(height: 10),
                CheckboxListTile(
                  dense: true,
                   controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "Show Medicine Name ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF071731)),
                  ),
                  value: true,
                  onChanged: (v) {},
                  tristate: true,
                ),
                CheckboxListTile(
                   controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: const Text(
                    "Show Medicine Name ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF071731)),
                  ),
                  value: true,
                  onChanged: (v) {},
                  tristate: true,
                ),
                  const SizedBox(height: 10),
                customWIdget(
                    title: "Notification Tone",
                    child: RadioListTile(
                       visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      value: 1,
                      groupValue: selectedRadioTile,
                      title: const Text(
                        "Push Notifications",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      onChanged: (val) {
                        setSelectedRadioTile(val!);
                      },
                      activeColor: Colors.red,
                      selected: true,
                    )),
                RadioListTile(
                   visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  value: 1,
                  groupValue: selectedRadioTile,
                  title: const Text(
                    "Regular Message",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  onChanged: (val) {
                    setSelectedRadioTile(val!);
                  },
                  activeColor: Colors.red,
                  selected: true,
                ),
                RadioListTile(
                   visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  value: 1,
                  groupValue: selectedRadioTile,
                  title: const Text(
                    "Phone Call",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  onChanged: (val) {
                    setSelectedRadioTile(val!);
                  },
                  activeColor: Colors.red,
                  selected: true,
                ),
                const SizedBox(height:80),
                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(MediaQuery.of(context).size.width, 45)),
                        backgroundColor: MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {},
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        ));
  }

  Widget customWIdget({required String title, required Widget child}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8A8A9B))),
                const SizedBox(height: 5),
        child
      ],
    );
  }
}
