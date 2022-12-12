import 'package:flutter/material.dart';
class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  final _passwordKey = GlobalKey<FormState>();
  final _emailKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
