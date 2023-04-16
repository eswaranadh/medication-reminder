

import 'package:flutter/material.dart';

class StepperComponent extends StatelessWidget {
  // index describe the position of our bubble
  int index;
  //currentIndex is index that is gonna change on Tap
  int currentIndex;
  //onTap CallBack
  VoidCallback onTap;

  bool isLast;
  StepperComponent({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.isLast = false,
  });


  List<String> steperName = ['Name Medication','Select Frequency','Select Stock'];

  @override
  Widget build(BuildContext context) {
    //now let's remove the ligne at the end of the row but also we need to remove unnecessary padding thus we need to remove the expanded
    //widget
    return isLast
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onTap,
                child: Container(
                  margin:  const EdgeInsets.symmetric(horizontal: 5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: currentIndex >= index + 1
                        ? Colors.orange
                        : Colors.black12,
                      border:  Border.all(
                        width: 2,
                      color: currentIndex >= index
                          ? Colors.orange
                          : Colors.black12),
                  ),
                ),
              ),
              //index+1 we dont wanna show 0 in the screen since our index will start at 0
              Text(steperName[index]),
            ],
          )
        : Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //this is the bubble
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: index == currentIndex
                              ? Colors.orange
                              : Colors.transparent,
                          border: Border.all(
                            width: 2,
                              color: currentIndex >= index
                                  ? Colors.orange
                                  : Colors.black12),
                        ),
                      ),
                    ),
                    //this the ligne
                    Expanded(
                        child: Container(
                      height: 2,
                      //why index+1 we want to turn the ligne orange that precede the active bubble
                      color: currentIndex >= index + 1
                          ? Colors.orange
                          : Colors.black12,
                    )),
                  ],
                ),
                //index+1 we dont wanna show 0 in the screen since our index will start at 0
                 Text(steperName[index]),
              ],
            ),
          );
  }
}
