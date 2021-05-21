import 'package:flutter/material.dart';

Widget getFieldsRow(List<Widget> children, {Axis direction: Axis.horizontal}) {
  final isHorizontal = direction == Axis.horizontal;
  return Flex(
    direction: direction,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: isHorizontal ? MainAxisSize.max : MainAxisSize.min,
    children: children
        .map((widget) => isHorizontal ? Expanded(child: widget) : widget)
        .toList(growable: false),
  );
}

class FieldBorder extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const FieldBorder({
    Key key,
    this.child,
    this.padding: const EdgeInsets.symmetric(horizontal: 12.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: child);
  }
}
