import 'package:flutter/material.dart';
import 'package:medix_app/widgets/containerofbodydoctorandnurse_widget.dart';
import 'package:medix_app/widgets/search_widget.dart';

class BodyNurseWidget extends StatelessWidget {
  const BodyNurseWidget({super.key});
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
