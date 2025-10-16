import 'package:dispatcher/design/colors.dart';
import 'package:dispatcher/design/dimensions.dart';
import 'package:dispatcher/design/images.dart';
import 'package:flutter/material.dart';

import '../../design/styles.dart';

class VehicleItem extends StatelessWidget {
  final Function() onTap;
  final Function() onStateTap;

  const VehicleItem({super.key, required this.onTap, required this.onStateTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
      child: Card(
        color: surfaceColor,
        margin: EdgeInsets.zero,
        elevation: elevation0_06,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: InkWell(
          // Эффект нажатия
          borderRadius: BorderRadius.circular(radius8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: padding8, right: padding16),
            child: Row(
              children: <Widget>[vehicleMotorcycleImage, _title(), _state()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: padding6, right: padding6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'BMW GS-7638',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: body2TextStyle,
            ),
            if (false)
              Text(
                'No Driver',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: hint1TextStyle,
              )
            else
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Driver: ', style: hint1TextStyle),
                    TextSpan(text: 'Paul', style: body2TextStyle),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: onStateTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          stateParkingImage,
          const Text('pickup', style: hint2TextStyle),
        ],
      ),
    );
  }
}
