import 'package:flutter/material.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class UndefinedScreen extends BaseStatelessScreen {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Text('Route is not defined'),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    // TODO: implement buildBody
    throw UnimplementedError();
  }
}