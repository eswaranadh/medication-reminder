
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mathra_reminder/feature/all_medicines/view/all_medicine.dart';
import 'package:mathra_reminder/feature/home/view/home_screen.dart';
import 'package:mathra_reminder/feature/settings/view/settings.dart';

import '../../../constant/asset_path.dart';

class HomePageWithBottomBar extends StatefulWidget {
  const HomePageWithBottomBar({Key? key}) : super(key: key);

  @override
  _HomePageWithBottomBarState createState() => _HomePageWithBottomBarState();
}

class _HomePageWithBottomBarState extends State<HomePageWithBottomBar> {
  int pageIndex = 0;

  final pages = [
    const MyHomeScreen(),
    const AllMedicineScreen(),
    const AppSettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildMyNavBar(context),
      body: pages[pageIndex],
    );
  }

  Widget buildMyNavBar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(2),
          topRight: Radius.circular(2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navBarItem(
              context: context,
              navIcon: AppAssetPath.todayPlusIcon,
              navTitle: "Today",
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              index: 0),
          navBarItem(
              context: context,
              navIcon: AppAssetPath.tabletSvg,
              navTitle: "All Medications",
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              index: 1),
          navBarItem(
              context: context,
              navIcon: AppAssetPath.settingsSvg,
              navTitle: "Settings",
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              index: 2)
        ],
      ),
    );
  }

  Widget navBarItem(
      {required BuildContext context,
      required String navIcon,
      required String navTitle,
      Function()? onTap,
      required int index}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(navIcon,
           height: 23, 
           width: 23,
              color: pageIndex != index ? Colors.grey : const Color(0xFF4285F4)),
          const SizedBox(height: 5),
          Text(
            navTitle,
            style: TextStyle(
                fontSize: 14,
                fontWeight: pageIndex == index ? FontWeight.w600 :FontWeight.w400,
                color:
                    pageIndex != index ? const Color(0xFF969AA3) : const Color(0xFF4285F4)),
          )
        ],
      ),
    );
  }
}
