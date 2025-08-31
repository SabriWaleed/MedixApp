import 'package:flutter/material.dart';
import 'package:medix_app/models/medecine_model.dart';

class GridviewmedecineWidget extends StatelessWidget {
  const GridviewmedecineWidget({super.key, required this.medicines});
  final List<MedicineModel> medicines;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: medicines.map((medicine) {
        return _buildProductCard(
          medicine.name,
          "\$${medicine.price}",
          medicine.image,
        );
      }).toList(),
    );
  }
}

Widget _buildProductCard(String name, String price, String imagePath) {
  return Container(
    height: 180,
    width: 120,
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xffACACAC), width: 1),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
          child: Image.asset(
            imagePath,
            height: 51,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 0),
        Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
