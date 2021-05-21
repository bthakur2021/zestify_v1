
import 'package:flutter/widgets.dart';

class KeyboardAvoidingNew extends StatelessWidget {
  final Widget child;
  final Curve curve;
  final Duration duration;
  final double kFactor;

  KeyboardAvoidingNew({
    this.child,
    this.curve = Curves.easeInOut,
    this.duration = const Duration(milliseconds: 100),
    this.kFactor = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    var _bottom = MediaQuery.of(context).viewInsets.bottom;

    var _verticalOffset = MediaQuery.of(context).viewInsets.bottom;

    //PrintUtils.printLog("KeyboardAvoiding -> _bottom: $_bottom");

    if(_verticalOffset < 0) {
      _verticalOffset = 0;
    }
    
    return Container(
      padding: EdgeInsets.only(bottom: _bottom),
      child: child,
    );
  }
}