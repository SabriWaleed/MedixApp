import 'package:flutter/material.dart';
import 'package:medix_app/views/doctors_view.dart';
import 'package:medix_app/views/medicine_screen.dart';
import 'package:medix_app/views/nurse_view.dart';
import 'package:medix_app/widgets/appbar_widget.dart';
import 'package:medix_app/widgets/rowsearchandicon_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  Widget _buildCard(
    BuildContext context,
    String title,
    String imagePath,
    Widget screen,
  ) {
    return GestureDetector(
      onTap: () => _navigateTo(context, screen),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 170,
        height: 170,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff2D9CDB), width: 1.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  width: 90,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: Color(0xff2D9CDB),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTipCard(String tip) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffE0E0E0)),
        ),
        child: Row(
          children: [
            Image.asset(
              "lib/assets/images/lamp-on.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                tip,
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              const RowsearchandiconWidget(),
              const SizedBox(height: 12),
              SizedBox(
                height: 130,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCard(
                        context,
                        "Doctors",
                        "lib/assets/images/doc1.webp",
                        const DoctorsView(),
                      ),
                      _buildCard(
                        context,
                        "Nurses",
                        "lib/assets/images/doc1.webp",
                        const NurseView(),
                      ),
                      _buildCard(
                        context,
                        "Medicines",
                        "lib/assets/images/doc1.webp",
                        MedicineScreen(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTipCard("Remember to drink four glasses of water"),
                      _buildTipCard("Don't postpone your regular check up"),
                      _buildTipCard(
                        "There is a 20% discount on the comprehensive analysis",
                      ),
                      _buildTipCard("Don't postpone your regular check up"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
