import 'package:flutter/material.dart';

class TabDivider extends StatelessWidget {
  final bool enabled;

  TabDivider(this.enabled);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 10,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: enabled ? Color(0xFF3399ff) : Color(0xFF999999),
          ),
        ),
      ),
    );
  }
}
