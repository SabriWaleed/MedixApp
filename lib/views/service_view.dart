import 'package:flutter/material.dart';
import 'package:medix_app/views/servicesdetails_view.dart';
import 'package:medix_app/widgets/bottomnavigationbar_widget.dart';
import 'package:medix_app/widgets/rowsearchandicon_widget.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  void _openService(BuildContext context, String serviceName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ServiceDetailsView(serviceName: serviceName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, String> services = {
      "Test & Examinations": "lib/assets/images/fluent-mdl2_test-plan.png",
      "Ambulance": "lib/assets/images/noto_ambulance.png",
      "Elderly Care": "lib/assets/images/medical-icon_care-staff-area.png",
      "Pharmacy": "lib/assets/images/streamline_pharmacy-solid.png",
      "Health insurance": "lib/assets/images/vaadin_health-card.png",
      "Physical therapy": "lib/assets/images/Vector (7).png",
      "Medical articles": "lib/assets/images/ooui_articles-ltr.png",
      "Medical advice": "lib/assets/images/healthicons_medical-advice.png",
    };

    final serviceEntries = services.entries.toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Services",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: RowsearchandiconWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: serviceEntries.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 160 / 120,
                ),
                itemBuilder: (context, index) {
                  final serviceName = serviceEntries[index].key;
                  final serviceIcon = serviceEntries[index].value;

                  return GestureDetector(
                    onTap: () => _openService(context, serviceName),
                    child: Container(
                      width: 149,
                      height: 108,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(serviceIcon, width: 40, height: 40),
                          const SizedBox(height: 4),
                          Text(
                            serviceName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomnavigationbarWidget(),
    );
  }
}
