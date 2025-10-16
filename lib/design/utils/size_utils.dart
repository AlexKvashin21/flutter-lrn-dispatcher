import 'package:flutter/material.dart';

import '../dimensions.dart';

double getListBottomPadding(BuildContext context) {
  final safeBottomPadding = MediaQuery.of(context).padding.bottom;
  return (safeBottomPadding + height8) * 2 + height40; // Отступ снизу
}
