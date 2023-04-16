
import 'package:flutter/material.dart';
import 'package:mathra_reminder/constant/asset_path.dart';
import 'package:mathra_reminder/widgets/customise_notification.dart';
class AppSettingsScreen extends StatefulWidget {
  const AppSettingsScreen({super.key});
  @override
  State<AppSettingsScreen> createState() => _AppSettingsScreenState();
}

class _AppSettingsScreenState extends State<AppSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings",
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFFD9D9D9))),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  minLeadingWidth: 1,
                  leading: Image.asset(AppAssetPath.profilePic),
                  title: const Text("Create Account or Sign in",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF080C3E))),
                  subtitle: const Text(
                    "Get timely reminders for your medications",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8A8A9B)),
                  ),
                ),
              ),
              titleWidget("Notifications"),
              listTileWithTitleWidget(
                  title: "Critical Alerts",
                  imageUrl: AppAssetPath.criticalAlrt),
              listTileWithTitleWidget(
                  title: "Customize Notification",
                  imageUrl: AppAssetPath.notification,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CustomizeNotificationScreen()));
                  }
                  ),
              customDivider(),
              titleWidget("Premium"),
              listTileWithTitleWidget(
                  title: "Manage Subscription",
                  imageUrl: AppAssetPath.settingsIcon),
              listTileWithTitleWidget(
                  title: "Restore Premium",
                  imageUrl: AppAssetPath.referece),
              customDivider(),
              titleWidget("Account"),
              listTileWithTitleWidget(
                  title: "Change Language",
                  imageUrl:AppAssetPath.changeLanguage),
              listTileWithTitleWidget(
                  title: "Set Password", imageUrl:AppAssetPath.lockIcon),
              listTileWithTitleWidget(
                  title: "About", imageUrl: AppAssetPath.aboutMe),
            ],
          ),
        ));
  }

  Widget customDivider(){
    return   Container(height: 1, color: const Color(0xFFE3E3E3));
  }

  Widget titleWidget(String titleText) {
    return Text(
      titleText,
      style: const TextStyle(
          color: Color(0xFF8A8A9B), fontSize: 16, fontWeight: FontWeight.w500),
    );
  }

  Widget listTileWithTitleWidget(
      {required String title, required String imageUrl,void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(imageUrl),
          const SizedBox(width:8),
          Text(
            title,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF080C3E)),
          )
        ],
      ),
    );
  }
}
