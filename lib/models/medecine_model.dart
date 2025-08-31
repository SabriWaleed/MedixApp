class MedicineModel {
  final String name;
  final double price;
  final String image;

  MedicineModel({required this.name, required this.price, required this.image});
}

final List<MedicineModel> fakemedicines = [
  MedicineModel(
    name: 'Panadol 500mg',
    price: 20.0,
    image: 'lib/assets/images/Frame 90 (1).png',
  ),
  MedicineModel(
    name: 'Aspirin 100mg',
    price: 15.0,
    image: 'lib/assets/images/Frame 90 (2).png',
  ),
  MedicineModel(
    name: 'Ibuprofen 400mg',
    price: 18.0,
    image: 'lib/assets/images/Frame 90 (3).png',
  ),
  MedicineModel(
    name: 'Amoxicillin 250mg',
    price: 25.0,
    image: 'lib/assets/images/Frame 90 (4).png',
  ),
  MedicineModel(
    name: 'Cough Syrup 100ml',
    price: 27.5,
    image: 'lib/assets/images/Frame 90 (5).png',
  ),
  MedicineModel(
    name: 'Vitamin C 1000mg',
    price: 30.0,
    image: 'lib/assets/images/Frame 90 (6).png',
  ),
];
