import 'package:flutter/material.dart';

import '../../../../widgets/custom_button.dart';

class AddMedicineLastStepWidget extends StatefulWidget {
  PageController pageController;
  AddMedicineLastStepWidget({super.key, required this.pageController});

  @override
  State<AddMedicineLastStepWidget> createState() =>
      _AddMedicineLastStepWidgetState();
}

class _AddMedicineLastStepWidgetState extends State<AddMedicineLastStepWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              children: [
          Expanded(
            child: Column(
              children: [
                rowWidget(),
                const SizedBox(height: 15),
                
                rowWidget(),
                const SizedBox(height: 15),
                rowWidget(),
                const SizedBox(height: 15),
                rowWidget(),
              ],
            ),
          ),
            CustomElevatedButton(
              onTap: () {
                setState(() {
                  widget.pageController.jumpToPage(3);
                });
              },
              title: "Save & Next",
            ),
            const SizedBox(height: 30)
              ],
            ),
        ));
  }

  Widget rowWidget() {
    return Row(
      children: [
        Image.asset('assets/images/med_bot.png'),
        const SizedBox(width: 10),
       const Text(
          "Stock Reminder",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        )
      ],
    );
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
