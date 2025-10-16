import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

import '../../design/widgets/app_header.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(title: 'Dispatcher'),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
