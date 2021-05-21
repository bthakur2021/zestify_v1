import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeMobileScreen extends StatefulHookWidget {
  @override
  _HomeWebScreenState createState() => _HomeWebScreenState();
}

class _HomeWebScreenState extends State<HomeMobileScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Home MOBILE Screen'),
    );
  }
}
