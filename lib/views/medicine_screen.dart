import 'package:flutter/material.dart';
import 'package:medix_app/models/medecine_model.dart';
import 'package:medix_app/widgets/appbar_widget.dart';
import 'package:medix_app/widgets/gridviewmedecine_widget.dart';
import 'package:medix_app/widgets/rowsearchandicon_widget.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({super.key});

  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  final List<Map<String, dynamic>> iconsdata = [
    {"image": "lib/assets/images/Group.png", "title": 'Tips'},
    {
      "image": "lib/assets/images/streamline-kameleon-color_medicine.png",
      "title": 'Medicine',
    },
    {
      "image": "lib/assets/images/solar_file-favourite-outline.png",
      "title": 'Favourite',
    },
    {"image": "lib/assets/images/lsicon_order-filled.png", "title": 'My Order'},
  ];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarWidget(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
          children: [
            const RowsearchandiconWidget(),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff2D9CDB)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  4,
                  (index) => _buildTabIcon(
                    iconsdata[index]["image"],
                    iconsdata[index]["title"],
                    index == selectedIndex,
                    index,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'All Product',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            GridviewmedecineWidget(medicines: fakemedicines),
            SizedBox(height: 16.0),
            Divider(thickness: 2),
            SizedBox(height: 16.0),
            Text(
              'New Product',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            GridviewmedecineWidget(medicines: fakemedicines),
          ],
        ),
      ),
    );
  }

  Widget _buildTabIcon(String image, String label, bool isSelected, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: isSelected
              ? Border.all(color: Color(0xff2D9CDB), width: 1.5)
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image, width: 32, height: 32),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.blue : Color(0xff686B6D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
