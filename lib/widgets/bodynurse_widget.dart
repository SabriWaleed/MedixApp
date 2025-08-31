import 'package:flutter/material.dart';
import 'package:medix_app/models/doctors_model.dart';
import 'package:medix_app/widgets/containerofbodydoctorandnurse_widget.dart';
import 'package:medix_app/widgets/rowsearchandicon_widget.dart';

class BodyNurseWidget extends StatelessWidget {
  const BodyNurseWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: RowsearchandiconWidget()
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ContainerofbodydoctorandnurseWidget(model: fakedatanurse[index],),
            childCount: fakedatanurse.length,
          ),
        ),
      ],
    );
  }
}
