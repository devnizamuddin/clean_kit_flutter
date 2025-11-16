import 'package:flutter/material.dart';

import '../../extensions/build_context.dart';

class PrimaryCheckboxTile extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const PrimaryCheckboxTile({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: onChanged,
      title: Text(
        label,
        style: context.bodyLarge,
      ),
      activeColor: context.primaryColor,
      tileColor: context.surfaceColor,
      contentPadding: EdgeInsets.all(0),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
