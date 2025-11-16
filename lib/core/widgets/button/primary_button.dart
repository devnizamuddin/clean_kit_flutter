import 'package:flutter/material.dart';

import '../../extensions/build_context.dart';
import '../../utils/log.dart';

class PrimaryButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    Log.info(message: 'Device Width : ${context.deviceWidth}');
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? context.primaryColor,
        foregroundColor: foregroundColor ?? context.onPrimaryColor,
        minimumSize: Size(context.deviceWidth, 40),
      ),

      child: Text(label),
    );
  }
}
