
import 'package:flutter/material.dart';
import 'package:mathra_reminder/feature/add_medicine/view/add_med/add_med1.dart';
import 'package:mathra_reminder/feature/add_medicine/view/add_med/add_med2.dart';
import 'package:mathra_reminder/feature/add_medicine/view/add_med/add_med3.dart';
import 'package:mathra_reminder/widgets/steper_component.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //let's add some padding press alt enter
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StepperComponent(
                  currentIndex: _currentIndex,
                  index: 0,
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                    _pageController.jumpToPage(0);
                  },
                ),
                StepperComponent(
                  currentIndex: _currentIndex,
                  index: 1,
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                    _pageController.jumpToPage(1);
                  },
                ),
                StepperComponent(
                  isLast: true,
                  currentIndex: _currentIndex,
                  index: 2,
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                    _pageController.jumpToPage(2);
                  },
                ),
              ],
            ),
          ),
      const SizedBox(height: 20),
          Expanded(
              child: PageView(
      controller: _pageController,
      children:  <Widget>[
      AddMedicineFirstStemWidget(pageController:_pageController),
        AddMedicineFrequencyWidget(pageController:_pageController),
      AddMedicineLastStepWidget(pageController:_pageController)
      ],
    )
    )]
    );
  }
}







