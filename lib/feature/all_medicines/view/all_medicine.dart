import 'package:flutter/material.dart';
import 'package:mathra_reminder/constant/asset_path.dart';
import 'package:mathra_reminder/feature/add_medicine/view/add_new_medicine.dart';

class AllMedicineScreen extends StatefulWidget {
  const AllMedicineScreen({super.key});

  @override
  State<AllMedicineScreen> createState() => _AllMedicineScreenState();
}

class _AllMedicineScreenState extends State<AllMedicineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(0.04),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text("All Medications",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddNewMedicineScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: const [
                  Icon(Icons.add, color: Colors.blue, size: 24),
                  Text("Add New", style: TextStyle(color: Colors.blue))
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            // margin: const EdgeInsets.all(1),
            color: Colors.black.withOpacity(0.001),
            shadowColor: Colors.grey.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),

            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Image.asset(AppAssetPath.oneTablet),
                            const SizedBox(width: 12),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Azithromycin ',
                                    style: TextStyle(
                                        color: Color(0xFF071731),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(height: 5),
                                Text(
                                  '1 Pill \u2022 5mg',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF8A8A9B)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        color: Color(0xFF646475),
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.3),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Everyday \u2022 01:30 PM \u2022 10 Pills left',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8A8A9B)),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
