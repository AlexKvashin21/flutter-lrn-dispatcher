import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/widgets/app_header.dart';
import 'package:dispatcher/pages/driver/driver_list.dart';
import 'package:flutter/material.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: 'Select driver',
        goBack: () {
          Navigator.pop(context);
        },
      ),
      body: Container(color: backgroundColor, child: const DriverList()),
    );
  }
}
