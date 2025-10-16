import 'package:flutter/material.dart';

import '../colors.dart';
import '../dimensions.dart';
import '../images.dart';
import '../styles.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()? goBack;

  const AppHeader({super.key, required this.title, this.goBack});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: primaryTextStyle),
      backgroundColor: surfaceColor,
      elevation: elevation0,
      centerTitle: true,
      leading: goBack != null
          ? IconButton(icon: arrowBackImage, onPressed: goBack)
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
