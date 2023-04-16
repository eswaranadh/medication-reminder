import 'package:flutter/material.dart';

import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown.dart';

class AddMedicineFrequencyWidget extends StatefulWidget {
  PageController pageController;
  AddMedicineFrequencyWidget({super.key, required this.pageController});

  @override
  State<AddMedicineFrequencyWidget> createState() =>
      _AddMedicineFrequencyWidgetState();
}

class _AddMedicineFrequencyWidgetState
    extends State<AddMedicineFrequencyWidget> {
  List<String> itemList = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customWIdget(
                          title: "Frequency",
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: CustomDropDown(
                                items: itemList,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              ))),
                      customWIdget(
                          title: "Frequency",
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: CustomDropDown(
                                items: itemList,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              )))
                    ]),
                const SizedBox(height: 20),
                customWIdget(
                    title: "Medicine Date",
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Every Tuesday & Wednesday",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Icon(Icons.calendar_month_outlined)
                          ],
                        ))),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customWIdget(
                          title: "Medicine Time",
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(Icons.watch_later_outlined)
                                ],
                              ))),
                      customWIdget(
                          title: "End Date",
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "1 March, 23",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(Icons.calendar_month_outlined)
                                ],
                              ))),
                    ]),
              ],
            ),
          ),
         CustomElevatedButton(onTap: () {
             widget.pageController.jumpToPage(3);
         },
         title: "Save & Next",
         ),
         const SizedBox(height: 30,)
        ],
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
