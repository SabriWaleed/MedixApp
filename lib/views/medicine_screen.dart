import 'package:flutter/material.dart';
import 'package:medix_app/widgets/rowsearchandicon_widget.dart';

class MedicineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
          children: [
            const RowsearchandiconWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabIcon(Icons.handshake, 'Tips', false),
                _buildTabIcon(Icons.medical_services, 'Medicine', false),
                _buildTabIcon(Icons.favorite, 'Favourite', false),
                _buildTabIcon(Icons.receipt, 'My Order', true),
              ],
            ),
            Text(
              'All Product',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'New Product',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
                _buildProductCard(
                  'Panadol',
                  '22',
                  "lib/assets/images/streamline_pharmacy-solid.png",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabIcon(IconData icon, String label, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue[50] : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: isSelected
            ? Border.all(color: Colors.blue, width: 1.5)
            : Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.blue : Colors.grey),
          Text(
            label,
            style: TextStyle(color: isSelected ? Colors.blue : Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String name, String price, String imagePath) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 60,
            fit: BoxFit.cover,
            color: Colors.blue,
          ),
          SizedBox(height: 8.0),
          Text(name, textAlign: TextAlign.center),
          Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
