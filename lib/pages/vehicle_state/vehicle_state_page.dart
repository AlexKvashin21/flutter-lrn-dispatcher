import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/widgets/app_header.dart';
import 'package:dispatcher/pages/vehicle_state/vehicle_state_list.dart';
import 'package:flutter/material.dart';

class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Update vehicle state',
        goBack: () {
          Navigator.pop(context);
        },
      ),
      body: Container(color: backgroundColor, child: const VehicleStateList()),
    );
  }
}
