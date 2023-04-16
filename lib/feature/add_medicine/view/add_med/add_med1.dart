import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mathra_reminder/widgets/choose_profile_bottom.dart';

import '../../../../widgets/custom_button.dart';

class AddMedicineFirstStemWidget extends StatefulWidget {
  PageController pageController;
  AddMedicineFirstStemWidget({super.key, required this.pageController});

  @override
  State<AddMedicineFirstStemWidget> createState() =>
      _AddMedicineFirstStemWidgetState();
}

class _AddMedicineFirstStemWidgetState
    extends State<AddMedicineFirstStemWidget> {
  int appearance = 2;
  File? imageData;
  int selectCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customWIdget(
                      title: "Medicine Name",
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red, //this has no effect
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "Azithromycin",
                        ),
                      )),
                  const SizedBox(height: 20),
                  customWIdget(
                      title: "Strength",
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red, //this has no effect
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: "500mg",
                        ),
                      )),
                  const SizedBox(height: 20),
                  customWIdget(
                      title: "Strength",
                      child: Row(
                        children: [
                          Radio(
                              visualDensity: VisualDensity.comfortable,
                              value: 1,
                              groupValue: appearance,
                              onChanged: (v) {
                                setState(() {
                                  appearance = v!;
                                });
                              }),
                          const Text(
                            "Upload Photo",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Radio(
                              visualDensity: VisualDensity.comfortable,
                              value: 2,
                              groupValue: appearance,
                              onChanged: (v) {
                                setState(() {
                                  appearance = v!;
                                });
                              }),
                          const Text(
                            "Select Category",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      )),
                  appearance == 1
                      ? Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: imageData == null
                                ? const AssetImage("assets/images/tablet.png")
                                : AssetImage(imageData!.path) as ImageProvider,
                            backgroundColor: Colors.white,
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (context) => ChooseProfile(),
                                    ).then((value) {
                                      setState(() {
                                        imageData = value;
                                      });
                                    });

                                    // _handleURLButtonPress(
                                    //     context, ImageSourceType.gallery);
                                  },
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.blue,
                                    child: Icon(
                                      CupertinoIcons.camera_fill,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        )
                      : SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectCategory = index;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                       clipBehavior: Clip.antiAliasWithSaveLayer,
                                       // padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color:selectCategory==index?Colors.green: const Color(0xFFC9E2ED)
                                          ),
                                          borderRadius: BorderRadius.circular(100)
                                        ),
                                        child: Image.asset("assets/images/tablet.png",fit: BoxFit.cover,)),
                                       Text(
                                        "Tablets",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: selectCategory==index?Colors.green:Colors.black,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
            CustomElevatedButton(
              onTap: () {
                setState(() {
                  widget.pageController.jumpToPage(1);
                });
              },
              title: "Save & Next",
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
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
