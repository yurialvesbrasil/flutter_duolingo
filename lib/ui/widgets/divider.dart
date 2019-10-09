import 'package:flutter/material.dart';
import 'package:flutter_base/ui/values/colors.dart';
import 'package:flutter_base/ui/values/values.dart';

class TabDivider extends StatelessWidget {
  final bool enabled;
  final double width;

  TabDivider(this.enabled, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: width,
      height: CUSTOM_DIVIDER_HEIGHT,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: enabled ? Color(0xFF1cb0f6) : dividerColor,
          ),
        ),
      ),
    );
  }
}
