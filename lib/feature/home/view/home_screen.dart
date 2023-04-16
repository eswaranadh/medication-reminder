import 'package:flutter/material.dart';
import 'package:mathra_reminder/constant/asset_path.dart';
import 'package:mathra_reminder/feature/all_medicines/view/all_medicine.dart';
import 'package:mathra_reminder/utils/custom_dailog.dart';
import 'package:mathra_reminder/widgets/table_calender.dart';

import '../../../utils/date_formate.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  Map<String, String> timeFormate = {};

  @override
  void initState() {
    // TODO: implement initState
    timeFormate = DateFormater().formateDate();
    super.initState();
  }

// output: Friday, 27, 2021
  @override
  Widget build(BuildContext context) {
    print("final date--> $timeFormate");
    return Scaffold(
        appBar: AppBar(
            title: RichText(
          text: const TextSpan(
            text: 'Good Morning, ',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            children: [
              TextSpan(
                text: 'Pandey',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF4285F4),
                ),
              ),
            ],
          ),
        )),
        body: Column(
          children: [
            headingWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, i) {
                  return customWidget(i);
                },
              ),
            ),
            // customWidget(),
          ],
        ));
  }

  Widget headingWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppAssetPath.medicineBotal),
                const SizedBox(width: 10),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    timeFormate['date']!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Color(0xFF444F5C)),
                  ),
                  Text(timeFormate['pre']!,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 6),
                  Text(timeFormate['month']!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color(0xFF444F5C)))
                ]),
                const SizedBox(width: 5),
                Text(timeFormate['day']!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF8A8A9B))),
              ],
            ),
          ),
          // SvgPicture.asset('assets/icons/calendar.svg')
          InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      const CustomTableCalender(),
                );
              },
              child: Image.asset(AppAssetPath.calendar))
        ],
      ),
    );
  }

  Widget customWidget(int i) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (con, ind) {
          return ind != 0
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                      Column(
                        children: List.generate(
                          3,
                          (ii) => Padding(
                              padding: const EdgeInsets.only(
                                  left: 35, top: 1, bottom: 2),
                              child: Container(
                                height: 2,
                                width: 1,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      Card(
                        elevation: 0.2,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          // color: Colors.red,

                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 45,
                                      width: 45,
                                      child:
                                          Image.asset(AppAssetPath.oneTablet)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Deroxy-p Syrup",
                                          style: TextStyle(
                                              color: Color(0xFF071731),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14)),
                                      RichText(
                                        text: const TextSpan(
                                          text: '1 Spoon ',
                                          style: TextStyle(
                                              color: Color(0xFF8A8A9B),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                          children: [
                                            TextSpan(
                                              text: '\u2022',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' 15 ml',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF8A8A9B),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                      DialogUtils.showCustomDialog(context, title: "Took Medicine", okBtnFunction: (){
                                        Navigator.pop(context);
                                      });
                                      },
                                      child: Image.asset(
                                          AppAssetPath.checkBoxIcon)),
                                  const SizedBox(width: 20),
                                  Image.asset(AppAssetPath.alarm),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ])
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    i != 0
                        ? Column(
                            children: List.generate(
                              3,
                              (ii) => Padding(
                                  padding: const EdgeInsets.only(
                                      left: 35, top: 1, bottom: 2),
                                  child: Container(
                                    height: 2,
                                    width: 1,
                                    color: Colors.grey,
                                  )),
                            ),
                          )
                        : Container(),
                    Container(
                      height: 32,
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.7),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Color(0xFFEBF4FF)),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 20,
                            color: Color(0xFF4285F4),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "09:00 AM",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF4285F4),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                );
        });
  }
}
