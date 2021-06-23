import 'package:flutter/material.dart';
import 'package:sigma/core/ui/states/base_stateless_screen.dart';

class UndefinedScreen extends BaseStatelessScreen {
  @override
  Widget buildBody(BuildContext context) {
    return Center(
        child: Text('Route is not defined'),
      );
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    // TODO: implement buildAppBar
    throw UnimplementedError();
  }
}