import 'package:flutter/material.dart';
import 'package:medix_app/views/doctors_view.dart';
import 'package:medix_app/views/medicine_screen.dart';
import 'package:medix_app/views/nurse_view.dart';
import 'package:medix_app/widgets/cusstom_appbar.dart';
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
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.blue[50]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(color: Colors.blue[200]!, width: 1.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.blue[900],
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
          gradient: LinearGradient(
            colors: [Colors.grey[200]!, Colors.grey[100]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.lightbulb_outline, color: Colors.grey[600], size: 16),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                tip,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
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
      appBar: CusstomAppbar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              // Search bar
              const RowsearchandiconWidget(),
              const SizedBox(height: 12),
              // Horizontal scrollable cards
              SizedBox(
                height: 130, // Adjusted height to fit the larger container
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
              // Vertical scrollable tips
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
