import 'package:flutter/material.dart';

class BaseState extends StatefulWidget {
  final Widget child;

  BaseState({this.child});

  @override
  _BaseStateState createState() => new _BaseStateState();
}

class _BaseStateState extends State<BaseState> with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    triggerObservers();
    //checkInternetConnectivity();
  }

  void triggerObservers() {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //alertDialog(context);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(child: Stack(
      textDirection: TextDirection.ltr,
      alignment: AlignmentDirectional.topStart,
      children: <Widget>[
        widget.child,
      ],
    ));
  }

  AppLifecycleState _appLifecycleState;

  // TODO: DID_CHANGE_APP_LIFE_CYCLE
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _appLifecycleState = state;
      if (_appLifecycleState == AppLifecycleState.paused ||
          _appLifecycleState == AppLifecycleState.inactive) {
        print("IF timer---fired: $_appLifecycleState");
      } else {
        print("ELSE timer---fired: $_appLifecycleState");
      }
    });
  }

}
