import 'package:flutter/material.dart';
import 'package:flutter_base/ui/values/colors.dart';

class TabDivider extends StatelessWidget {
  final bool enabled;

  TabDivider(this.enabled);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width / 2,
      height: 2,
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
