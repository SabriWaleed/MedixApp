import 'package:flutter/material.dart';
import 'package:medix_app/widgets/containerofbodydoctorandnurse_widget.dart';
import 'package:medix_app/widgets/optionbody_widget.dart';
import 'package:medix_app/widgets/search_widget.dart';

class BodydoctorWidget extends StatefulWidget {
  const BodydoctorWidget({super.key});
  @override
  State<BodydoctorWidget> createState() => _BodydoctorWidgetState();
}

class _BodydoctorWidgetState extends State<BodydoctorWidget> {
  int selectedIndex = -1;
  static const List<String> doctorSpecialties = [
    "All",
    "Internal Medicine",
    "General Surgery",
    "Orthopedics",
    "Pediatrics",
    "Gynecology & Obstetrics",
    "Cardiology",
    "Pulmonology",
    "Nephrology",
    "Gastroenterology & Hepatology",
    "Neurology",
    "Neurosurgery",
    "ENT (Ear, Nose & Throat)",
    "Dentistry",
    "Dermatology",
    "Ophthalmology",
    "Urology",
    "Anesthesiology",
    "Oncology",
    "Psychiatry",
    "Plastic Surgery",
    "Rheumatology & Immunology",
    "Endocrinology & Diabetes",
    "Vascular Surgery",
    "Family Medicine",
    "Physical Medicine & Rehabilitation",
    "Radiology",
    "Pathology & Clinical Laboratory",
    "Radiation Oncology",
    "Surgical Oncology",
    "Pediatric Surgery",
    "Cardiothoracic Surgery",
    "Nuclear Medicine",
    "Emergency Medicine",
    "Geriatrics",
    "Occupational Medicine",
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SearchWidget(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 5),
                child: Image.asset(
                  "lib/assets/images/filter-tick.png",
                  width: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctorSpecialties.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: OptionbodyWidget(
                    text: doctorSpecialties[index],
                    isSelected: selectedIndex == index,
                    isFirst: index == 0,
                    isLast: index == doctorSpecialties.length - 1,
                  ),
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ContainerofbodydoctorandnurseWidget(),
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
